
import Foundation

public final class TokenPayload {
    public struct V1: Codable {
        public let authCode: String
        public let codeVerifier: String
        
        public enum CodingKeys: String, CodingKey {
            case authCode = "auth_code"
            case codeVerifier = "code_verifier"
        }
    }
}
