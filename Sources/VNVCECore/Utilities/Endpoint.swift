
import Foundation

public struct HTTPMethod {
    public static let get = "GET"
    public static let post = "POST"
    public static let put = "PUT"
    public static let patch = "PATCH"
    public static let delete = "DELETE"
}

public struct Endpoint {
    public static let shared = Endpoint()
    
    
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
