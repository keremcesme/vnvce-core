
import Foundation

public final class MeRoutes {
    public struct V1 {
        public static let shared = V1()
        private static let resource = "resource"
        private static let me = "me".path
        
        private static let edit = "edit".path
        
        // Edit
        public let editDisplayName = resource + me + edit + "display-name".path
    }
}
