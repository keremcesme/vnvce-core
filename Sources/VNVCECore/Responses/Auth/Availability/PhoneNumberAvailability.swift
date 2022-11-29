
import Foundation

public struct PhoneNumberAvailability {
    public enum V1: Codable, Equatable {
        
        case exist
        case notUsed
        case otpExpected
        case otpExpectedBySameUser(_ otp: SMSOTPModel.V1?)
        case blacklisted
        
        public static func == (lhs: PhoneNumberAvailability.V1, rhs: PhoneNumberAvailability.V1) -> Bool {
            switch (lhs, rhs) {
            case (.exist, .exist):
                return true
            case (.notUsed, .notUsed):
                return true
            case (.otpExpected, .otpExpected):
                return true
            case (let .otpExpectedBySameUser(lhsType), let .otpExpectedBySameUser(rhsType)):
                return lhsType == rhsType
            case (.blacklisted, .blacklisted):
                return true
            default:
                return false
            }
        }
        
        public var description: String {
            switch self {
            case .exist:
                return "The phone number is exist."
            case .notUsed:
                return "The phone number is not used."
            case .otpExpected:
                return "Waiting for OTP verification for phone number."
            case .otpExpectedBySameUser:
                return "OTP is expected by same user."
            case .blacklisted:
                return "The phone number is blacklisted."
            }
        }
    }
}
