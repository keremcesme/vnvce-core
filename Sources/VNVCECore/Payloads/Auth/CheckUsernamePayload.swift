
import Foundation

public struct CheckUsernamePayload {
    public struct V1: Codable {
        public let clientID: String
        public let username: String
        
        init(clientID: String, username: String) {
            self.clientID = clientID
            self.username = username
        }
        
        public enum CodingKeys: String, CodingKey {
            case clientID = "client_id"
            case username = "username"
        }
    }
}
