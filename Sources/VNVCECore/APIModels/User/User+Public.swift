
import Foundation

extension User.V1 {
    public struct Public: Identifiable, Codable, Equatable, Hashable {
        public let id: UUID
        public let username: String
        public let displayName: String?
        public let profilePictureURL: String?
        
        public init(id: UUID, username: String, displayName: String?, profilePictureURL: String?) {
            self.id = id
            self.username = username
            self.displayName = displayName
            self.profilePictureURL = profilePictureURL
        }
        
        enum CodingKeys: String, CodingKey {
            case id
            case username
            case displayName = "display_name"
            case profilePictureURL = "profile_picture_url"
        }
    }
}
