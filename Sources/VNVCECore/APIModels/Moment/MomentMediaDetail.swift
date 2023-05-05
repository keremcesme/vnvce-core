
import Foundation

public final class MomentMediaDetail {
    public struct V1: Codable, Equatable {
        
        public let mediaType: MediaType
        public let url: String
        public let thumbnailURL: String?
        public let sensitiveContent: Bool
        
        public init(
            mediaType: MediaType,
            url: String,
            thumbnailURL: String?,
            sensitiveContent: Bool
        ) {
            self.mediaType = mediaType
            self.url = url
            self.thumbnailURL = thumbnailURL
            self.sensitiveContent = sensitiveContent
        }
        
        enum CodingKeys: String, CodingKey {
            case mediaType = "media_type"
            case url
            case thumbnailURL = "thumbnail_url"
            case sensitiveContent = "sensitive_content"
        }
        
    }
}
