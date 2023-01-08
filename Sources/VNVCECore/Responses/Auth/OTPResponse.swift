
import Foundation

public final class OTPResponse {
    
    public struct V1: Codable {
        public let otp: OTP
        public let createdAt: TimeInterval
        public let expireAt: TimeInterval
        
        public init(otp: OTP, createdAt: TimeInterval, expireAt: TimeInterval) {
            self.otp = otp
            self.createdAt = createdAt
            self.expireAt = expireAt
        }
        
        public enum CodingKeys: String, CodingKey {
            case otp
            case createdAt = "created_at"
            case expireAt = "expire_at"
        }
        
        public struct OTP: Codable {
            public let id: String
            public let token: String
            public init(id: String, token: String) {
                self.id = id
                self.token = token
            }
            public enum CodingKeys: String, CodingKey {
                case id = "otp_id"
                case token = "otp_token"
            }
        }
    }
    
}
