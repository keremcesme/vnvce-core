
import Foundation

public final class ProfilePicture {
    public struct V1: Codable, Equatable, Hashable {
        public let url: String
        public let name: String
        
        public init(url: String, name: String) {
            self.url = url
            self.name = name
        }
    }
}
