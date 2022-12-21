
import Foundation

public final class CreateAccountParams {
    public struct V1: Codable {
        public let username: String
        public let phoneNumber: String
        public let code: String
        enum CodingKeys: String, CodingKey {
            case username
            case phoneNumber = "phone_number"
            case code
        }
    }
}
