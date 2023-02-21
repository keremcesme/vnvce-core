
import Foundation

public final class Moment {
    public struct V1: Codable, Equatable {
        public let id: UUID
        public let media: MomentMediaDetail.V1
        public let createdAt: TimeInterval
        
        public init(
            id: UUID,
            media: MomentMediaDetail.V1,
            createdAt: TimeInterval
        ) {
            self.id = id
            self.media = media
            self.createdAt = createdAt
        }
        
        enum CodingKeys: String, CodingKey {
            case id
            case media
            case createdAt = "created_at"
        }
        
    }
}
