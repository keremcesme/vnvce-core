
import Foundation

public enum AppStoreProductType: String, Codable {
    case autoRenewable, nonRenewing, nonConsumable, consumable
    
    public static let schema =  "appstore_product_type"
}
