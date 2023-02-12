
import Foundation

public enum AppStoreProductOwnershipType: String, Codable {
    case familyShared, purchased
    
    public static let schema =  "appstore_product_ownership_type"
}
