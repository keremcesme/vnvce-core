
import Foundation

extension Moment.V1 {
    public struct Public: Codable, Equatable, Hashable {
        public let id: UUID
        public let mediaType: MediaType
        public let url: String
        public let thumbnailURL: String?
        public let sensitiveContent: Bool
        public let createdAt: TimeInterval
        
        public init(id: UUID, mediaType: MediaType, url: String, thumbnailURL: String?, sensitiveContent: Bool, createdAt: TimeInterval) {
            self.id = id
            self.mediaType = mediaType
            self.url = url
            self.thumbnailURL = thumbnailURL
            self.sensitiveContent = sensitiveContent
            self.createdAt = createdAt
        }
        
        enum CodingKeys: String, CodingKey {
            case id
            case mediaType = "media_type"
            case url
            case thumbnailURL = "thumbnail_url"
            case sensitiveContent = "sensitive_content"
            case createdAt = "created_at"
        }
    }
}
