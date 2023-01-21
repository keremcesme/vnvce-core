
import Foundation

public final class Username {
    public struct V1: Codable {
        public let username: String
        public let modifiedAt: TimeInterval
        
        public init(username: String,
                    modifiedAt: TimeInterval) {
            self.username = username
            self.modifiedAt = modifiedAt
        }
        
        enum CodingKeys: String, CodingKey {
            case username
            case modifiedAt = "modified_at"
        }
    }
}
