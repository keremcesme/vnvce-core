
import Foundation

public final class CheckPhoneNumberPayload {
    public struct V1: Codable {
        public let clientID: String
        public let phoneNumber: String
        
        public init(clientID: String, phoneNumber: String) {
            self.clientID = clientID
            self.phoneNumber = phoneNumber
        }
        
        public enum CodingKeys: String, CodingKey {
            case clientID = "client_id"
            case phoneNumber = "phone_number"
        }
    }
}
