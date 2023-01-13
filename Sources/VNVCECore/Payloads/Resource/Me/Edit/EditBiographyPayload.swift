
import Foundation

public final class EditBiographyPayload {
    public struct V1: Codable {
        public let biography: String
        
        public init(_ biography: String) {
            self.biography = biography
        }
        
        enum CodingKeys: String, CodingKey {
            case biography
        }
    }
}
