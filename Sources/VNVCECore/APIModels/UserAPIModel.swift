
import Foundation

public final class UserModel {
    public final class V1 {
        
        public struct Public: Codable {
            public let id: UUID
            public let username: String
            
            public let displayName: String?
            public let biography: String?
            
            public init(id: UUID, username: String, displayName: String?, biography: String?) {
                self.id = id
                self.username = username
                self.displayName = displayName
                self.biography = biography
            }
        }
        
        public struct Private: Codable {
            public let id: UUID
            public let username: String
            public let phoneNumber: String
            
            public let displayName: String?
            public let biography: String?
            
            public let createdAt: TimeInterval
            public let updatedAt: TimeInterval
            
            public init(id: UUID, username: String, phoneNumber: String, displayName: String?, biography: String?, createdAt: TimeInterval, updatedAt: TimeInterval) {
                self.id = id
                self.username = username
                self.phoneNumber = phoneNumber
                self.displayName = displayName
                self.biography = biography
                self.createdAt = createdAt
                self.updatedAt = updatedAt
            }
        }
    }
}
