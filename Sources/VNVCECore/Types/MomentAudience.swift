
import Foundation

public enum MomentAudience: String, Codable, Equatable {
    case friendsOnly, friendsOfFriends, nearby
    

    public static let schema =  "moment_audience"
}

