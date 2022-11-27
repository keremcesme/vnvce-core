
import Foundation

public struct UsernameAvailability {
    public enum V1: Codable {
        case used
        case notUsed
        case reservedBySameUser
        case reserved
        case blacklisted
        
        public var description: String {
            switch self {
            case .used:
                return "Username is used."
            case .notUsed:
                return "Username is not used."
            case .reservedBySameUser:
                return "The username is reserved by the same user."
            case .reserved:
                return "Username is reserved."
            case .blacklisted:
                return "The username is blacklisted"
            }
        }
    }
}

