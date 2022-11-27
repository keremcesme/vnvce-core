
import Foundation

public struct CheckUsernamePayload {
    public struct V1: Codable {
        let clientID: String
        let username: String
        
        public enum CodingKeys: String, CodingKey {
            case clientID = "client_id"
            case username = "phone_number"
        }
    }
}
