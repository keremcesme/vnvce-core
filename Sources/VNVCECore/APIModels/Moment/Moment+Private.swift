
import Foundation

extension Moment.V1 {
    public struct Private: Codable, Equatable, Hashable {
        public let id: UUID
        public let message: String?
        public let audience: MomentAudience
        public let location: MomentLocation
        public let mediaType: MediaType
        public let url: String
        public let thumbnailURL: String?
        public let sensitiveContent: Bool
        public let createdAt: TimeInterval
        
        public init(id: UUID, message: String?, audience: MomentAudience, location: MomentLocation, mediaType: MediaType, url: String, thumbnailURL: String?, sensitiveContent: Bool, createdAt: TimeInterval) {
            self.id = id
            self.message = message
            self.audience = audience
            self.location = location
            self.mediaType = mediaType
            self.url = url
            self.thumbnailURL = thumbnailURL
            self.sensitiveContent = sensitiveContent
            self.createdAt = createdAt
        }
        
        enum CodingKeys: String, CodingKey {
            case id
            case message
            case audience
            case location
            case mediaType = "media_type"
            case url
            case thumbnailURL = "thumbnail_url"
            case sensitiveContent = "sensitive_content"
            case createdAt = "created_at"
        }
    }
}
