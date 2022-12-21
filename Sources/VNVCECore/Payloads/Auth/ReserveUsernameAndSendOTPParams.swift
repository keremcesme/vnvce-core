
import Foundation

public final class ReserveUsernameAndSendOTPParams {
    public struct V1: Codable {
        public let phoneNumber: String
        public let username: String
        
        enum CodingKeys: String, CodingKey {
            case phoneNumber = "phone_number"
            case username = "username"
        }
    }
}
