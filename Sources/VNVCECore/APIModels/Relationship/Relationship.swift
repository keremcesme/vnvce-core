
import Foundation

public final class Relationship {
    public enum V1: Codable, Equatable {
        case nothing
        case friend(friendshipID: UUID)
        case friendRequestSubmitted(requestID: UUID)
        case friendRequestReceived(requestID: UUID)
        case blocked(blockID: UUID)
        case targetUserBlocked
    }
}
