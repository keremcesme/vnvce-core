
import Foundation

public final class MomentRoutes {
    public struct V1 {
        public static let shared = V1()
        private static let moment = "moment".path
        
        public let upload = moment + "upload".path
        public let delete = moment + "delete".path
        
    }
}
