
import Foundation

public final class LoginResponse {
    public struct V1: Codable {
        public let userID: String
        public let tokens: TokensResponse.V1
        
        public init(userID: String, tokens: TokensResponse.V1) {
            self.userID = userID
            self.tokens = tokens
        }
        
        enum CodingKeys: String, CodingKey {
            case userID = "user_id"
            case tokens
        }
    }
}
