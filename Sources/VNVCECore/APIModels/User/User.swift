
import Foundation

protocol PublicUser: Codable {}
protocol PrivateUser: Codable {}

public final class User {
    public final class V1 {
        public struct Public: PublicUser {
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
        public struct Private: PrivateUser {
            public let id: UUID
            public let username: Username.V1
            public let phoneNumber: String
            public let displayName: String?
            public let profilePicture: ProfilePicture.V1?
            public let dateOfBirthYear: Int
            public let createdAt: TimeInterval
            
            public init(id: UUID, username: Username.V1, phoneNumber: String, displayName: String?, profilePicture: ProfilePicture.V1?, dateOfBirthYear: Int, createdAt: TimeInterval) {
                self.id = id
                self.username = username
                self.phoneNumber = phoneNumber
                self.displayName = displayName
                self.profilePicture = profilePicture
                self.dateOfBirthYear = dateOfBirthYear
                self.createdAt = createdAt
            }
        }
    }
}
