
import Foundation

public final class EditDisplayNamePayload {
    public struct V1: Codable {
        public let displayName: String
        
        public init(_ displayName: String) {
            self.displayName = displayName
        }
        
        enum CodingKeys: String, CodingKey {
            case displayName = "display-name"
        }
    }
}
