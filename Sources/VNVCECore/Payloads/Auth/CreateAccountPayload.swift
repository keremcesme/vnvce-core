
import Foundation

public final class CreateAccountPayload {
    public struct V1: Codable {
        public let username: String
        
        public let phoneNumber: PhoneNumber
        
        public let code: String
        public let codeChallenge: String
        
        public init(
            username: String,
            phoneNumber: PhoneNumber,
            code: String,
            codeChallenge: String
        ){
            self.username = username
            self.phoneNumber = phoneNumber
            self.code = code
            self.codeChallenge = codeChallenge
        }
        
        enum CodingKeys: String, CodingKey {
            case username
            case phoneNumber = "phone_number"
            case code
            case codeChallenge = "code_challenge"
        }
        
        public struct PhoneNumber: Codable {
            public let country: String
            public let countryCode: Int
            public let nationalNumber: Int
            
            public init(
                country: String,
                countryCode: Int,
                nationalNumber: Int
            ) {
                self.country = country
                self.countryCode = countryCode
                self.nationalNumber = nationalNumber
            }
            enum CodingKeys: String, CodingKey {
                case country
                case countryCode = "country_code"
                case nationalNumber = "national_number"
            }
        }
        
    }
}
