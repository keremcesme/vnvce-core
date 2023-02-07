
import Foundation

public final class UploadMomentPayload {
    public struct V1: Codable {
        public let id: UUID
        public let mediaType: MediaType
        public let url: String
        public let thumbnailURL: String?
        
        public init(id: UUID, mediaType: MediaType, url: String, thumbnailURL: String?) {
            self.id = id
            self.mediaType = mediaType
            self.url = url
            self.thumbnailURL = thumbnailURL
        }
        
        enum CodingKeys: String, CodingKey {
            case id
            case mediaType = "media_type"
            case url
            case thumbnailURL = "thumbnail_url"
        }
    }
}
