
import Foundation

public final class CheckPhoneNumberParams {
    public struct V1: Codable {
        public let phoneNumber: String
        public let reason: Reason
        
        public init(phoneNumber: String, reason: Reason) {
            self.phoneNumber = phoneNumber
            self.reason = reason
        }
        public enum CodingKeys: String, CodingKey {
            case phoneNumber = "phone_number"
            case reason
        }
        
        public enum Reason: String, Codable {
            case create
            case login
        }
    }
}
