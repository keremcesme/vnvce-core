
import Foundation

public final class AccessTokenResponse {
    public struct V1: Codable {
        public let token: String
        
        public init(token: String) {
            self.token = token
        }
    }
}
