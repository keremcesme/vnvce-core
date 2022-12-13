
import Foundation

public final class AuthorizeResponse {
    public struct V1: Codable {
        public let authCode: String
        public let authID: String
        
        public init(_ authCode: String, _ authID: String) {
            self.authCode = authCode
            self.authID = authID
        }
        
        public enum CodingKeys: String, CodingKey {
            case authCode = "auth_code"
            case authID = "auth_id"
        }
    }
}
