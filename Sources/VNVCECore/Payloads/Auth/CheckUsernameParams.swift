
import Foundation

public final class CheckUsernameParams {
    public struct V1: Codable {
        public let username: String
        
        public init(username: String) {
            self.username = username
        }
        public enum CodingKeys: String, CodingKey {
            case username
        }
    }
}
