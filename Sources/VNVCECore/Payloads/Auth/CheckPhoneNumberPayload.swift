
import Foundation

public final class CheckPhoneNumberPayload {
    public struct V1: Codable {
        public let clientID: String
        public let clientOS: ClientOS
        public let phoneNumber: String
        
        public init(clientID: String, phoneNumber: String, clientOS: ClientOS) {
            self.clientID = clientID
            self.phoneNumber = phoneNumber
            self.clientOS = clientOS
        }
        
        public enum CodingKeys: String, CodingKey {
            case clientID = "client_id"
            case phoneNumber = "phone_number"
            case clientOS = "client_os"
        }
    }
}
