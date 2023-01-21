
import Foundation

public final class User {
    public final class V1 {
        
        public struct Public: Codable {
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
}