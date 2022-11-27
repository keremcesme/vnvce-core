
import Foundation

public struct CheckPhoneNumberPayload {
    public struct V1: Codable {
        public let clientID: String
        public let phoneNumber: String
        
        public enum CodingKeys: String, CodingKey {
            case clientID = "client_id"
            case phoneNumber = "phone_number"
        }
    }
}
