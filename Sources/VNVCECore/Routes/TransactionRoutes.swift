
import Foundation

public final class TransactionRoutes {
    public struct V1 {
        public static let shared = V1()
        private static let membership = "membership".path
        
        public let transaction = membership + "transaction".path
    }
}

