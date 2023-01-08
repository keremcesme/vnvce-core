
import Foundation

public final class RequestResponse {
    public struct V1: Codable {
        public let error: Bool
        public let message: String?
        
        public init(error: Bool, message: String? = nil) {
            self.error = error
            self.message = message
        }
    }
}

