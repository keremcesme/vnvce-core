
import Foundation

public final class DeleteMomentParam {
    public struct V1: Codable {
        public let momentID: String
        
        public init(_ momentID: String) {
            self.momentID = momentID
        }
        
        enum CodingKeys: String, CodingKey {
            case momentID = "moment_id"
        }
    }
}
