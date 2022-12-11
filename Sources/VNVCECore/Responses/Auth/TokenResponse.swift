
import Foundation

public final class TokenResponse {
    public struct V1: Codable {
        public let accessToken: String
        public let refreshToken: String
        
        public enum CodingKeys: String, CodingKey {
            case accessToken = "access_token"
            case refreshToken = "refresh_token"
        }
    }
}
