
import Foundation

public final class SMSOTPModel {
    
    public struct V1: Codable {
        let otpID: String
        let otpToken: String?
        let createdAt: TimeInterval
        let expireAt: TimeInterval
        
        public init(otpID: String, otpToken: String? = nil, createdAt: TimeInterval, expireAt: TimeInterval) {
            self.otpID = otpID
            self.otpToken = otpToken
            self.createdAt = createdAt
            self.expireAt = expireAt
        }
        
        public enum CodingKeys: String, CodingKey {
            case otpID = "otp_id"
            case otpToken = "otp_token"
            case createdAt = "created_at"
            case expireAt = "expire_at"
        }
    }
    
}
