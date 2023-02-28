
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

public extension Relationship.V1 {
    var message: String {
        switch self {
        case .nothing:
            return "Nothing"
        case let .friend(friendshipID):
            return "Friendship ID: \(friendshipID)"
        case let .friendRequestSubmitted(requestID):
            return "Request is submitted. RequestID: \(requestID)"
        case let .friendRequestReceived(requestID):
            return "Request is received. RequestID: \(requestID)"
        case .targetUserBlocked:
            return "Target user blocked."
        case let .blocked(blockID):
            return "Blocked: \(blockID)"
        }
    }
    
    var requestID: UUID? {
        switch self {
        case let .friendRequestSubmitted(requestID):
            return requestID
        case let .friendRequestReceived(requestID):
            return requestID
        default: return nil
        }
    }
    
    var friendshipID: UUID? {
        switch self {
        case let .friend(friendshipID):
            return friendshipID
        default: return nil
        }
    }
    
    var blockID: UUID? {
        switch self {
        case let .blocked(blockID):
            return blockID
        default: return nil
        }
    }
}
