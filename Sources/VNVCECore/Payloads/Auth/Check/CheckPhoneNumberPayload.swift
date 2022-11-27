
import Foundation

struct CheckPhoneNumberPayload {
    struct V1: Codable {
        let clientID: String
        let phoneNumber: String
        
        enum CodingKeys: String, CodingKey {
            case clientID = "client_id"
            case phoneNumber = "phone_number"
        }
    }
}
