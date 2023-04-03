
import Foundation

public final class RelationshipRoutes {
    public struct V1 {
        public static let shared = V1()
        private static let relationship = "relationship".path
        private static let request = "request".path
        
        public let fetch = relationship + "fetch".path
        
        // Request
        public let send = relationship + request + "send".path
        public let accept = relationship + request + "accept".path
        public let undoOrReject = relationship + request + "undo-or-reject".path
        
        public let remove = relationship + "remove-friend".path
        
        public let block = relationship + "block-user".path
        public let unblock = relationship + "unblock-user".path
    }
}
