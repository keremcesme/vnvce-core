
import Foundation

public final class VerifyOTPAndLoginParams {
    public struct V1: Codable {
        public struct V1: Codable {
            public let phoneNumber: String
            public let code: String
            enum CodingKeys: String, CodingKey {
                case phoneNumber = "phone_number"
                case code
            }
        }
    }
}
