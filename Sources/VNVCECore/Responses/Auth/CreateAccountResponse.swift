
import Foundation

public final class CreateAccountResponse {
    public struct V1: Codable {
        public let userID: String
        public let authCode: String
        public let authID: String
        
        public init(_ userID: String, _ authCode: String, _ authID: String) {
            self.userID = userID
            self.authCode = authCode
            self.authID = authID
        }
        
        public enum CodingKeys: String, CodingKey {
            case userID = "user_id"
            case authCode = "auth_code"
            case authID = "auth_id"
        }
    }
}
