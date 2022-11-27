
import Foundation

struct CheckUsernamePayload {
    struct V1: Codable {
        let clientID: String
        let username: String
        
        enum CodingKeys: String, CodingKey {
            case clientID = "client_id"
            case username = "phone_number"
        }
    }
}
