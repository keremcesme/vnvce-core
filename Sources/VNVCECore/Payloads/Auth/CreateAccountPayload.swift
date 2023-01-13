
import Foundation

public final class CreateAccountPayload {
    public struct V1: Codable {
        public let username: String
        
        public let dateOfBirth: DateOfBirth
        public let phoneNumber: PhoneNumber
        
        public let code: String
        public let codeChallenge: String
        
        public init(
            username: String,
            dateOfBirth: DateOfBirth,
            phoneNumber: PhoneNumber,
            code: String,
            codeChallenge: String
        ){
            self.username = username
            self.dateOfBirth = dateOfBirth
            self.phoneNumber = phoneNumber
            self.code = code
            self.codeChallenge = codeChallenge
        }
        
        enum CodingKeys: String, CodingKey {
            case username
            case dateOfBirth = "date_of_birth"
            case phoneNumber = "phone_number"
            case code
            case codeChallenge = "code_challenge"
        }
        
        public struct DateOfBirth: Codable {
            public let day: Int
            public let month: Month
            public let year: Int
            
            public init(day: Int, month: Month, year: Int) {
                self.day = day
                self.month = month
                self.year = year
            }
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
