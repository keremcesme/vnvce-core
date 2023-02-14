
import Foundation

public enum AppStoreOfferType: String, Codable {
    case introductory, promotional, code
    
    public static let schema =  "appstore_offer_type"
}

//public extension UInt32 {
//    func offerType() throws -> AppStoreOfferType {
//        switch self {
//        case 1:
//            return .introductory
//        case 2:
//            return .promotional
//        case 3:
//            return .code
//        default:
//            return .none
//        }
//    }
//
//    enum ConvertOfferTypeError: String, Error {
//        case unavailableOffer = "Incorrect offer"
//    }
//}
