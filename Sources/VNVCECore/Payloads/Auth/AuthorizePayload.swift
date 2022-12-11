
import Foundation

public struct AuthorizePayload {
    public struct V1: Codable {
        public let codeChallenge: String
        public let clientID: String
        
        enum CodingKeys: String, CodingKey {
            case codeChallenge = "code_challenge"
            case clientID = "client_id"
        }
    }
}
