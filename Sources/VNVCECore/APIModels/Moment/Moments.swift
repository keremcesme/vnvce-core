
import Foundation

public final class Moments {
    public struct V1: Codable {
        public let owner: User.V1.Public
        public let moments: [Moment.V1]
        
        public init(owner: User.V1.Public, moments: [Moment.V1]) {
            self.owner = owner
            self.moments = moments
        }
        
        enum CodingKeys: String, CodingKey {
            case owner
            case moments
        }
    }
}
