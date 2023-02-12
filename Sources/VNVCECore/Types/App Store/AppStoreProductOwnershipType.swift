
import Foundation

public enum AppStoreProductOwnershipType: String, Codable {
    case familyShared = "FAMILY_SHARED"
    case purchased = "PURCHASED"
    
    public static let schema =  "appstore_product_ownership_type"
}
