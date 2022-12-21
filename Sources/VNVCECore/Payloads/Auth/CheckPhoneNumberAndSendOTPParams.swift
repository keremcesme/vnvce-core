
import Foundation

public final class CheckPhoneNumberAndSendOTPParams {
    public struct V1: Codable {
        public let phoneNumber: String
        public let codeChallenge: String
        
        enum CodingKeys: String, CodingKey {
            case phoneNumber = "phone_number"
            case codeChallenge = "code_challenge"
        }
    }
}
