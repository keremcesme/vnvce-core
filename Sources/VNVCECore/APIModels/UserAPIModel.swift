
import Foundation

public final class UserModel {
    public final class V1 {
        
        public struct Public {
            public let id: UUID
            public let username: String
            
            public let displayName: String?
            public let biography: String?
        }
        
        public struct Private {
            public let id: UUID
            public let username: String
            public let phoneNumber: String
            
            public let displayName: String?
            public let biography: String?
            
            public let createdAt: TimeInterval
            public let updatedAt: TimeInterval
        }
    }
}
