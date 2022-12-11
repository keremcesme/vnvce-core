
import Foundation

public final class AuthorizeResponse {
    public struct V1: Codable {
        public let authCode: String
        
        public init(_ authCode: String) {
            self.authCode = authCode
        }
        
        public enum CodingKeys: String, CodingKey {
            case authCode = "auth_code"
        }
    }
}
