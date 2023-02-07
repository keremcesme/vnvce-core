
import Foundation

public enum MomentVisibility: String, Codable {
    
    case friends
    case friendsOfFriends
    
    public static let schema =  "moment_visibility"
    
    enum CodingKeys: String, CodingKey {
        case friends
        case friendsOfFriends = "friends_of_friends"
    }
}

