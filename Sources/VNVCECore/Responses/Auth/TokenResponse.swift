
import Foundation

public final class TokenResponse {
    public struct V1: Codable {
        public let accessToken: String
        public let refreshToken: String
        public let authID: String
        
        public init(_ accessToken: String, _ refreshToken: String, _ authID: String) {
            self.accessToken = accessToken
            self.refreshToken = refreshToken
            self.authID = authID
        }
        
        public enum CodingKeys: String, CodingKey {
            case accessToken = "access_token"
            case refreshToken = "refresh_token"
            case authID = "auth_id"
        }
    }
}
