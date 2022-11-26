
import Foundation

public struct RouteDefinition {
    public let method: Endpoint.HTTPMethod
    public let path: String
    
    public init(method: Endpoint.HTTPMethod, path: String) {
        self.method = method
        self.path = path
    }
}


//#if (os(Linux) || os(macOS)) && canImport(Vapor)
//#endif

