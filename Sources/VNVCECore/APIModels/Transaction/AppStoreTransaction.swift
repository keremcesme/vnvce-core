
import Foundation

public final class AppStoreTransaction {
    public struct V1: Codable {
        // MARK: Required
        public let id: String
        public let originalID: String
        public let appAccountToken: UUID
        public let productID: String
        public let appBundleID: String
//        public let purchaseDate: Date
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
        
        public let signedDate: Date
        
        public init(id: String, originalID: String, appAccountToken: UUID, productID: String, appBundleID: String, purchaseDate: Date, originalPurchaseDate: Date, purchasedQuantity: Int, productType: AppStoreProductType, ownershipType: AppStoreProductOwnershipType, webOrderLineItemID: String?, subscriptionGroupID: String?, expirationDate: Date?, isUpgraded: Bool?, offerType: AppStoreOfferType?, offerID: String?, revocationDate: Date?, revocationReason: AppStoreRevocationReason?, signedDate: Date) {
            self.id = id
            self.originalID = originalID
            self.appAccountToken = appAccountToken
            self.productID = productID
            self.appBundleID = appBundleID
//            self.purchaseDate = purchaseDate
            self.originalPurchaseDate = originalPurchaseDate
            self.purchasedQuantity = purchasedQuantity
            self.productType = productType
            self.ownershipType = ownershipType
            self.webOrderLineItemID = webOrderLineItemID
            self.subscriptionGroupID = subscriptionGroupID
            self.expirationDate = expirationDate
            self.isUpgraded = isUpgraded
            self.offerType = offerType
            self.offerID = offerID
            self.revocationDate = revocationDate
            self.revocationReason = revocationReason
            self.signedDate = signedDate
        }
    }
    
}
