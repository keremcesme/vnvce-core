
import Foundation

public final class Username {
    public struct V1: Codable, Equatable, Hashable {
        public let username: String
        public let modifiedAt: TimeInterval
//        public let testValue: Bool
        
        public init(
            username: String,
            modifiedAt: TimeInterval
//            testValue: Bool?
        ) {
            self.username = username
            self.modifiedAt = modifiedAt
//            self.testValue = testValue ?? false
        }
        
        enum CodingKeys: String, CodingKey {
            case username
            case modifiedAt = "modified_at"
//            case testValue = "test_value"
        }
    }
}
