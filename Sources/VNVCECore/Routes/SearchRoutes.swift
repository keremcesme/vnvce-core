
import Foundation

public final class SearchRoutes {
    public struct V1 {
        public static let shared = V1()
        private static let search = "search".path
        
        public let searchUser = search + "user".path
    }
}

