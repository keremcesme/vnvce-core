
import Foundation

public final class MomentMediaDetail {
    public struct V1: Codable {
        public let id: UUID
        public let mediaType: MediaType
        public let url: String
        public let thumbnailURL: String?
        public let sensitiveContent: Bool
        
        public init(
            id: UUID,
            mediaType: MediaType,
            url: String,
            thumbnailURL: String? = nil,
            sensitiveContent: Bool
        ) {
            self.id = id
            self.mediaType = mediaType
            self.url = url
            self.thumbnailURL = thumbnailURL
            self.sensitiveContent = sensitiveContent
        }
        
        enum CodingKeys: String, CodingKey {
            case id
            case mediaType = "media_type"
            case url
            case thumbnailURL = "thumbnail_url"
            case sensitiveContent = "sensitive_content"
        }
        
    }
}
