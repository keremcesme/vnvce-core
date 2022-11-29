
import Foundation

public final class ResultResponse {
    public struct V1: Codable {
        let error: Bool
        let description: String?
        
        public init(error: Bool, description: String? = nil) {
            self.error = error
            self.description = description
        }
        
        public enum CodingKeys: String, CodingKey {
            case error = "error"
            case description = "description"
        }
    }
}
