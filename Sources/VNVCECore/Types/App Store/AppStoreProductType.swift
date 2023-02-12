
import Foundation

public enum AppStoreProductType: String, Codable {
    case autoRenewable = "Auto-Renewable Subscription"
    case nonRenewing = "Non-Renewing Subscription"
    case nonConsumable = "Non-Consumable"
    case consumable = "Consumable"
    
    public static let schema =  "appstore_product_type"
}
