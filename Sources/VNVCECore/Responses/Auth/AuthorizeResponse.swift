
import Foundation

public final class AuthorizeResponse {
    public struct V1: Codable {
        public let authCode: String
        init(_ authCode: String) {
            self.authCode = authCode
        }
        enum CodingKeys: String, CodingKey {
            case authCode = "auth_code"
        }
    }
}
