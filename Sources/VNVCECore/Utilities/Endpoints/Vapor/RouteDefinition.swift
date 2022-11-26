
import Foundation

#if (os(Linux) || os(macOS)) && canImport(Vapor)
extension Endpoint {
    public struct RouteDefinition {
        public let root: [String]
        public let method: HTTPMethod
        public let path: [String]
        
        init(root: [String], method: HTTPMethod, path: [String] = []) {
            self.root = root
            self.method = method
            self.path = path
        }
    }
}
#endif
