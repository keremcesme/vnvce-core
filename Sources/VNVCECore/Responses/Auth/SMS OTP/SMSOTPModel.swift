
import Foundation

public final class SMSOTPModel {
    
    public struct V1: Codable {
        let createdAt: TimeInterval
        let expireAt: TimeInterval
        
        public init(createdAt: TimeInterval, expireAt: TimeInterval) {
            self.createdAt = createdAt
            self.expireAt = expireAt
        }
        
        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"
            case expireAt = "expire_at"
        }
    }
    
}
