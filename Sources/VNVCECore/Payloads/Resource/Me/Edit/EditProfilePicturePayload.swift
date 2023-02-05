
import Foundation

public final class EditProfilePicturePayload {
    public struct V1: Codable {
        public let url: String
        
        public init(url: String) {
            self.url = url
        }
        
        enum CodingKeys: String, CodingKey {
            case url
        }
    }
}
