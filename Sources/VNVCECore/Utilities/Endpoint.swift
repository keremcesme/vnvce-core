
import Foundation

public struct Endpoint {
    
    public enum HTTPMethod: String {
        case get
        case post
        case put
        case patch
        case delete
    }
    
    private let scheme = "https"
    private let host = "vnvce.com"
    
    public func makeURL(_ route: String, params: [URLQueryItem] = [], host: String? = nil) -> URL {
        var components = URLComponents()
        components.scheme = scheme
        components.host = host ?? self.host
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
