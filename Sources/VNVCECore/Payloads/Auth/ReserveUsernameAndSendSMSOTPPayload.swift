
import Foundation

public struct ReserveUsernameAndSendSMSOTPPayload {
    public struct V1: Codable {
        public let phoneNumber: String
        public let username: String
        public let clientID: String
        
        enum CodingKeys: String, CodingKey {
            case phoneNumber = "phone_number"
            case username = "username"
            case clientID = "client_id"
        }
    }
}
