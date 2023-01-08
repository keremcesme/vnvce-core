
import Foundation

public final class CheckPhoneNumberParams {
    public struct V1: Codable {
        public let phoneNumber: String
        
        public init(phoneNumber: String) {
            self.phoneNumber = phoneNumber
        }
        public enum CodingKeys: String, CodingKey {
            case phoneNumber = "phone_number"
        }
    }
}
