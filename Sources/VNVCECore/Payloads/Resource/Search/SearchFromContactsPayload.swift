
import Foundation

public final class SearchFromContactsPayload {
    public struct V1: Codable {
        public var phoneNumbers: [String]
        
        public init(_ phoneNumbers: [String]) {
            self.phoneNumbers = phoneNumbers
        }
        
        enum CodingKeys: String, CodingKey {
            case phoneNumbers = "phone_numbers"
        }
    }
}
