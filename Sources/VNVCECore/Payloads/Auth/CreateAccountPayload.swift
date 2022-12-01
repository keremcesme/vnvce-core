
import Foundation

public final class CreateAccountPayload {
    public struct V1: Codable {
        public let username: String
        public let clientID: String
        public let phoneNumber: String
        public let code: String
        
        public init(username: String, clientID: String, phoneNumber: String, code: String) {
            self.username = username
            self.clientID = clientID
            self.phoneNumber = phoneNumber
            self.code = code
        }
        
        
        enum CodingKeys: String, CodingKey {
            case username = "username"
            case clientID = "client_id"
            case phoneNumber = "phone_number"
            case code
        }
    }
}
