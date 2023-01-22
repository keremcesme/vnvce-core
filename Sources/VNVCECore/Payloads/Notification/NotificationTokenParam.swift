
import Foundation

public final class NotificationTokenParam {
    public struct V1: Codable {
        public let token: String
        public init(_ token: String) {
            self.token = token
        }
    }
}
