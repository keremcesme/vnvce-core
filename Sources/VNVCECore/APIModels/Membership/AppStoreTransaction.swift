
import Foundation

public final class AppStoreTransaction {
    public struct V1: Codable {
        // MARK: Required
        public let id: UInt64
        public let originalID: UInt64
        public let productID: String
        public let appBundleID: String
        public let purchaseDate: Date
        public let originalPurchaseDate: Date
        public let purchasedQuantity: Int
        
        public let productType: AppStoreProductType
        public let ownershipType: AppStoreProductOwnershipType
        
        /// - Note: Only for subscriptions.
        public let webOrderLineItemID: String?
        public let subscriptionGroupID: String?
        public let expirationDate: Date?
        public let isUpgraded: Bool?
        public let offerType: AppStoreOfferType?
        public let offerID: String?
        
        
        public let revocationDate: Date?
        public let revocationReason: AppStoreRevocationReason?
        
        public let appAccountToken: UUID?
        
        public let signedDate: Date
    }
    
}
