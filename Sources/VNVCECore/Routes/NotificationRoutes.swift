
import Foundation

public final class NotificationRoutes {
    public struct V1 {
        public static let shared = V1()
        private static let notification = "notification".path
        
        public let register = notification + "register-token".path
    }
}

