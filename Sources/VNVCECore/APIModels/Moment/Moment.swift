
import Foundation

public final class Moment {
    public struct V1: Codable {
        public let id: UUID
        public let owner: User.V1.Public
        public let media: MomentMediaDetail.V1
        public let createdAt: TimeInterval
        
        public init(
            id: UUID,
            owner: User.V1.Public,
            media: MomentMediaDetail.V1,
            createdAt: TimeInterval
        ) {
            self.id = id
            self.owner = owner
            self.media = media
            self.createdAt = createdAt
        }
        
        enum CodingKeys: String, CodingKey {
            case id
            case owner
            case media
            case createdAt = "created_at"
        }
        
    }
}
