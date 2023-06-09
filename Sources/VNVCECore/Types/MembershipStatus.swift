
import Foundation

public enum MembershipStatus: String, Codable {
    // SUBSCRIBED
    case initialBuy // ACTIVE
    case resubscribe // ACTIVE
    
    // DID_FAIL_TO_RENEW
    case billingIssue // DEACTIVE
    case gracePeriod // ACTIVE
    
    // DID_CHANGE_RENEWAL_PREF
    case renewalPrefUpgraded // ACTIVE
    case renewalPrefDowngraded // ACTIVE
    
    // DID_CHANGE_RENEWAL_STATUS
    case autoRenewEnabled // ACTIVE
    case autoRenewDisabled // ACTIVE
    
    // DID_RENEW
    case didRenew // ACTIVE
    case didRenewWithBillingRecovery // ACTIVE
    
    // EXPIRED
    case voluntary // DEACTIVE
    case billingRetryFailed // DEACTIVE
    case priceIncreaseDenied // DEACTIVE
    case productNotForSale // DEACTIVE
    case expiredOther // DEACTIVE
    
    // GRACE_PERIOD_EXPIRED
    case gracePeriodExpired // DEACTIVE
    
    // OFFER_REDEEMED
    case offerRedeemedForInitialBuy // ACTIVE
    case offerRedeemedForResubscribe // ACTIVE
    case offerRedeemedForUpgrade // ACTIVE
    case offerRedeemedForDowngrade // ACTIVE
    case offerRedeemedForCurrent // ACTIVE
    
    // PRICE_INCREASE
    case priceIncreaseAccepted // ACTIVE
    case priceIncreasePending // ACTIVE
    
    // REFUND
    case refunded // DEACTIVE
    
    // CONSUMPTION_REQUEST
    case consumptionRequested // ACTIVE
    
    // REFUND_DECLINED
    case refundDeclined // ACTIVE
    
    // RENEWAL_EXTENDED
    case renewalExtended // ACTIVE
    
    // REVOKE
    case revoked // DEACTIVE
    
    // LIFETIME MEMBERSHIP
    case lifetime // ACTIVE
    
    // NONE
    case `none` // DEACTIVE
    
    public static let schema =  "membership_status_type"
}

public extension MembershipStatus {
    var isActive: Bool {
        switch self {
        case .initialBuy, .resubscribe, .gracePeriod, .renewalPrefUpgraded, .renewalPrefDowngraded, .autoRenewEnabled, .autoRenewDisabled, .didRenew, .didRenewWithBillingRecovery, .offerRedeemedForInitialBuy, .offerRedeemedForResubscribe, .offerRedeemedForUpgrade, .offerRedeemedForDowngrade, .offerRedeemedForCurrent, .priceIncreaseAccepted, .priceIncreasePending, .consumptionRequested, .refundDeclined, .renewalExtended, .lifetime:
            return true
        default:
            return false
        }
    }
}
