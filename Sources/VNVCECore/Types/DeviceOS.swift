
import Foundation

public enum ClientOS: String, Codable {
    case ios, android
    
    public static let schema =  "client_os"
}

public extension String {
    var convertClientOS: ClientOS? {
        ClientOS(rawValue: self)
    }
}
