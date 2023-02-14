
import Foundation

public final class AppStoreTransaction {
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
        public let offerType: AppStoreOfferType
        
        public let revocationDate: Date?
        public let revocationReason: AppStoreRevocationReason?
        
        public let appAccountToken: UUID?
        
        public init(id: UInt64, originalID: UInt64, webOrderLineItemID: String?, appBundleID: String, productID: String, productType: AppStoreProductType, subscriptionGroupID: String?, isUpgraded: Bool, purchaseDate: Date, expirationDate: Date?, ownershipType: AppStoreProductOwnershipType, purchasedQuantity: Int, offerID: String?, offerType: AppStoreOfferType = .none, revocationDate: Date?, revocationReason: AppStoreRevocationReason?, appAccountToken: UUID?) {
            self.id = id
            self.originalID = originalID
            self.webOrderLineItemID = webOrderLineItemID
            self.appBundleID = appBundleID
            self.productID = productID
            self.productType = productType
            self.subscriptionGroupID = subscriptionGroupID
            self.isUpgraded = isUpgraded
            self.purchaseDate = purchaseDate
            self.expirationDate = expirationDate
            self.ownershipType = ownershipType
            self.purchasedQuantity = purchasedQuantity
            self.offerID = offerID
            self.offerType = offerType
            self.revocationDate = revocationDate
            self.revocationReason = revocationReason
            self.appAccountToken = appAccountToken
        }
    }
    
}
