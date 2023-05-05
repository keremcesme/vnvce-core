
import Foundation

public final class UploadMomentPayload {
    public struct V1: Codable {
        public let id: UUID
        public let media: Media
        public let audience: MomentAudience
        public let location: MomentLocation?
        
        public init(id: UUID, media: Media, audience: MomentAudience, location: MomentLocation?) {
            self.id = id
            self.media = media
            self.audience = audience
            self.location = location
        }
        
        public struct Media: Codable {
            public let mediaType: MediaType
            public let url: String
            public let thumbnailURL: String?
            
            public init(mediaType: MediaType, url: String, thumbnailURL: String?) {
                self.mediaType = mediaType
                self.url = url
                self.thumbnailURL = thumbnailURL
            }
            
            enum CodingKeys: String, CodingKey {
                case mediaType = "media_type"
                case url
                case thumbnailURL = "thumbnail_url"
            }
        }
        
        enum CodingKeys: String, CodingKey {
            case id
            case media = "media"
            case audience
            case location
        }
    }
}
