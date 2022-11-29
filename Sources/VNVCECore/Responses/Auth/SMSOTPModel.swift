
import Foundation

public final class SMSOTPModel {
    
    struct V1: Codable {
        let otpID: String
        let createdAt: TimeInterval
        let expireAt: TimeInterval
        
        public enum CodingKeys: String, CodingKey {
            case otpID = "otp_id"
            case createdAt = "created_at"
            case expireAt = "expire_at"
        }
    }
    
}
