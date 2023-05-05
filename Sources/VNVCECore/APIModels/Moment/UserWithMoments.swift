
import Foundation

public final class UserWithMoments {
    public struct V1: Codable {
        public let owner: User.V1.Public
        public var moments: [Moment.V1.Public]

        public init(owner: User.V1.Public, moments: [Moment.V1.Public]) {
            self.owner = owner
            self.moments = moments
        }

        enum CodingKeys: String, CodingKey {
            case owner
            case moments
        }
    }
}
