
import Foundation

public final class RelationshipParam {
    public struct V1: Codable {
        public let userID: String
        public init(_ userID: String) {
            self.userID = userID
        }
        enum CodingKeys: String, CodingKey {
            case userID = "user_id"
        }
    }
}
