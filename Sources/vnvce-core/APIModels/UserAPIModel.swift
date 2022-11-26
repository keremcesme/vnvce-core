
import Foundation

public struct UserAPIModel: Codable {
    public let id: UUID
    public let name: String
    public let username: String
    
    public init(id: UUID, name: String, username: String) {
        self.id = id
        self.name = name
        self.username = username
    }
}

extension UserAPIModel {
    public struct Create: Codable {
        public let name: String
        public let username: String
        
        public init(name: String, username: String) {
            self.name = name
            self.username = username
        }
    }
}
