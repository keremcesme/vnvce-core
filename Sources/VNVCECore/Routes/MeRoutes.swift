
import Foundation

public final class MeRoutes {
    public struct V1 {
        public static let shared = V1()
        private static let me = "me"
        private static let edit = "edit".path
        
        // Edit
        public let editDisplayName = me + edit + "display-name".path
        public let editBiography = me + edit + "biography".path
    }
}
