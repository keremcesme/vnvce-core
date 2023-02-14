
import Foundation

public enum AppStoreRevocationReason: String, Codable {
    case developerIssue, other
    
    public static let schema =  "appstore_revocation_reason_type"
}

//public extension UInt32 {
//    func revocationReason() throws -> AppStoreRevocationReason {
//        switch self {
//        case 0:
//            return .other
//        case 1:
//            return .developerIssue
//        default:
//            throw ConvertRevocationReasonError.unavailableReason
//        }
//    }
//
//    enum ConvertRevocationReasonError: String, Error {
//        case unavailableReason = "Unavailable Reason"
//    }
//}
