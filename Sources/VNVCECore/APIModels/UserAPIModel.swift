
import Foundation

public final class User {
    public final class V1 {
        public struct Public: Codable {
            public let id: UUID
            public let username: String
            public let displayName: String?
            public let profilePictureURL: String?
            public let dateOfBirthYear: Int
            
            public init(id: UUID, username: String, displayName: String?, profilePictureURL: String?, dateOfBirthYear: Int) {
                self.id = id
                self.username = username
                self.displayName = displayName
                self.profilePictureURL = profilePictureURL
                self.dateOfBirthYear = dateOfBirthYear
            }
        }
        public struct Private: Codable {
            public let id: UUID
            public let username: Username
            public let phoneNumber: String
            public let displayName: String?
            public let profilePicture: ProfilePicture?
            public let dateOfBirthYear: Int
            public let createdAt: TimeInterval
            
            public init(id: UUID, username: Username, phoneNumber: String, displayName: String?, profilePicture: ProfilePicture?, dateOfBirthYear: Int, createdAt: TimeInterval) {
                self.id = id
                self.username = username
                self.phoneNumber = phoneNumber
                self.displayName = displayName
                self.profilePicture = profilePicture
                self.dateOfBirthYear = dateOfBirthYear
                self.createdAt = createdAt
            }
            
            public struct ProfilePicture: Codable {
                public let url: String
                public let name: String
                
                public init(url: String, name: String) {
                    self.url = url
                    self.name = name
                }
            }
            
            public struct Username: Codable {
                public let username: String
                public let modifiedAt: TimeInterval
                
                public init(username: String,
                            modifiedAt: TimeInterval) {
                    self.username = username
                    self.modifiedAt = modifiedAt
                }
            }
        }
    }
}
