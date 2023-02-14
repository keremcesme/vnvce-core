
import Foundation

public final class Transaction {
    public struct V1: Codable {
        public let id: UInt64
        public let originalID: UInt64
        public let webOrderLineItemID: String?
        
        public let appBundleID: String
        public let productID: String
        public let productType: AppStoreProductType
        public let subscriptionGroupID: String?
        public let isUpgraded: Bool
        
//        public let currencyCode: String
//        public let price: Double
        
        public let purchaseDate: Date
        public let expirationDate: Date?
        
        public let ownershipType: AppStoreProductOwnershipType
        public let purchasedQuantity: Int
        
        public let offerID: String?
        public let offerType: AppStoreOfferType?
        
        public let revocationDate: Date?
        public let revocationReason: AppStoreRevocationReason?
        
        public let appAccountToken: UUID?
    }
    
}
