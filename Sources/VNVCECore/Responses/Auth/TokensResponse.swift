
import Foundation

public final class TokensResponse {
    public struct V1: Codable {
        public let accessToken: String
        public let refreshToken: String
        
        public init(_ accessToken: String, _ refreshToken: String) {
            self.accessToken = accessToken
            self.refreshToken = refreshToken
        }
        
        public enum CodingKeys: String, CodingKey {
            case accessToken = "access_token"
            case refreshToken = "refresh_token"
        }
    }
}
