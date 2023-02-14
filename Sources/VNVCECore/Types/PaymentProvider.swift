
import Foundation

public enum PaymentProvider: String, Codable {
    case appleAppStore, googlePlayStore
    

    public static let schema =  "payment_provider"
}

