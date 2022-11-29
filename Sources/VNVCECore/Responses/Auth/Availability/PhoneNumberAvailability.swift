
import Foundation

public struct PhoneNumberAvailability {
    
    public struct V1: Codable {
        
        public let otp: SMSOTPModel.V1?
        public let availability: Availability
        
        public init(otp: SMSOTPModel.V1? = nil, availability: Availability) {
            self.otp = otp
            self.availability = availability
        }
        
        public enum Availability: Codable {
            case exist
            case notUsed
            case otpExpected
            case otpExpectedBySameUser
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
    
    
}
