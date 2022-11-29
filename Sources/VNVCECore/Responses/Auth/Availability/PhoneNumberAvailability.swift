
import Foundation

public struct PhoneNumberAvailability {
    public enum V1: Codable {
        case exist
        case notUsed
        case otpExpected
        case otpExpectedBySameUser(otp: SMSOTPModel.V1?)
        case blacklisted
        
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
