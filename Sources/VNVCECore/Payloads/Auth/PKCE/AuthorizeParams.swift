
import Foundation

public struct AuthorizeParams {
    public struct V1: Codable {
        public let codeChallenge: String
        
        enum CodingKeys: String, CodingKey {
            case codeChallenge = "code_challenge"
        }
    }
}
