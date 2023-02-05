
import Foundation

public final class EditProfilePicturePayload {
    public struct V1: Codable {
        public let name: String
        public let url: String
        
        public init(name: String, url: String) {
            self.name = name
            self.url = url
        }
        
        enum CodingKeys: String, CodingKey {
            case name
            case url
        }
    }
}
