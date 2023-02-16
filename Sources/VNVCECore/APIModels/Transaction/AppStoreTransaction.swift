
import Foundation

public final class AppStoreTransaction {
    public struct V1: Codable {
        // MARK: Required
        public let id: String
        public let originalID: String
        public let appAccountToken: UUID
        public let productID: String
        public let appBundleID: String
        public let purchaseDouble: Double
        public let originalPurchaseDouble: Double
        public let purchasedQuantity: Int
        
        public let productType: AppStoreProductType
        public let ownershipType: AppStoreProductOwnershipType
        
        /// - Note: Only for subscriptions.
        public let webOrderLineItemID: String?
        public let subscriptionGroupID: String?
        public let expirationDouble: Double?
        public let isUpgraded: Bool?
        public let offerType: AppStoreOfferType?
        public let offerID: String?
        
        
        public let revocationDouble: Double?
        public let revocationReason: AppStoreRevocationReason?
        
        public let signedDouble: Double
        
        public init(id: String, originalID: String, appAccountToken: UUID, productID: String, appBundleID: String, purchaseDouble: Double, originalPurchaseDouble: Double, purchasedQuantity: Int, productType: AppStoreProductType, ownershipType: AppStoreProductOwnershipType, webOrderLineItemID: String?, subscriptionGroupID: String?, expirationDouble: Double?, isUpgraded: Bool?, offerType: AppStoreOfferType?, offerID: String?, revocationDouble: Double?, revocationReason: AppStoreRevocationReason?, signedDouble: Double) {
            self.id = id
            self.originalID = originalID
            self.appAccountToken = appAccountToken
            self.productID = productID
            self.appBundleID = appBundleID
            self.purchaseDouble = purchaseDouble
            self.originalPurchaseDouble = originalPurchaseDouble
            self.purchasedQuantity = purchasedQuantity
            self.productType = productType
            self.ownershipType = ownershipType
            self.webOrderLineItemID = webOrderLineItemID
            self.subscriptionGroupID = subscriptionGroupID
            self.expirationDouble = expirationDouble
            self.isUpgraded = isUpgraded
            self.offerType = offerType
            self.offerID = offerID
            self.revocationDouble = revocationDouble
            self.revocationReason = revocationReason
            self.signedDouble = signedDouble
        }
    }
    
}
