
import Foundation

public struct CheckUsernamePayload {
    public struct V1: Codable {
        public let clientID: String
        public let username: String
        
        public enum CodingKeys: String, CodingKey {
            case clientID = "client_id"
            case username = "username"
        }
    }
}
