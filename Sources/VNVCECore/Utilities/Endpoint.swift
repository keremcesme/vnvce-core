
import Foundation

public enum Environment {
    case prod
    case dev(_ host: String)
}

public struct HTTPMethod {
    public static let get = "GET"
    public static let post = "POST"
    public static let put = "PUT"
    public static let patch = "PATCH"
    public static let delete = "DELETE"
}

public struct Endpoint {
    public static let shared = Endpoint(env: .prod)
    
    private let scheme = "https"
    private let host = "vnvce.com"
    
    public var env: Environment
    
    public init(env: Environment) {
        self.env = env
    }
    
    public func makeURL(_ route: String, params: [URLQueryItem] = []) -> URL {
        var components = URLComponents()
        components.scheme = scheme
        switch env {
        case .prod:
            components.host = host
        case let .dev(host):
            components.host = host
        }
        components.path += "api".path
        components.path += route.path
        
        if !params.isEmpty {
            components.queryItems = params
        }
        
        return components.url!
    }
    
    
    
}

extension String {
    var path: String {
        return "/\(self)"
    }
}
