
import Foundation

public enum MomentAudience: String, Codable, Equatable, Hashable {
    case friendsOnly, friendsOfFriends, nearby
    

    public static let schema =  "moment_audience"
}

