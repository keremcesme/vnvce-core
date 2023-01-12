
import Foundation

public typealias ReAuthorizePayload = GenerateTokensPayload

public final class GenerateTokensPayload {
    public struct V1: Codable {
        public let authCode: String
        public let codeVerifier: String
        
        public init(authCode: String, codeVerifier: String) {
            self.authCode = authCode
            self.codeVerifier = codeVerifier
        }
        
        public enum CodingKeys: String, CodingKey {
            case authCode = "auth_code"
            case codeVerifier = "code_verifier"
        }
    }
}
