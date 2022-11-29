
import Foundation

public final class SMSOTPModel {
    
    public struct V1: Codable, Equatable {
        let otpID: String
        let createdAt: TimeInterval
        let expireAt: TimeInterval
        
        public init(otpID: String, createdAt: TimeInterval, expireAt: TimeInterval) {
            self.otpID = otpID
            self.createdAt = createdAt
            self.expireAt = expireAt
        }
        
        public enum CodingKeys: String, CodingKey {
            case otpID = "otp_id"
            case createdAt = "created_at"
            case expireAt = "expire_at"
        }
    }
    
}
