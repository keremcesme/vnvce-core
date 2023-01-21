
import Foundation

public enum RunMode {
    case prod
    case dev(_ host: String)
}

public enum API: String {
    case auth = "auth"
    case resource = "resource"
}

public struct HTTPMethod {
    public static let get = "GET"
    public static let post = "POST"
    public static let put = "PUT"
    public static let patch = "PATCH"
    public static let delete = "DELETE"
}

public struct Endpoint {
    public static let shared = Endpoint(run: .prod)
    
    private let scheme = "https"
    private let host = "vnvce.com"
    
    public var run: RunMode
    
    public init(run: RunMode) {
        self.run = run
    }
    
    public func makeURL(_ route: String, params: [URLQueryItem] = [], pagination: PaginationParams? = nil, api: API = .resource) -> URL {
        var components = URLComponents()
        components.scheme = scheme
        switch run {
        case .prod:
            components.host = host
        case let .dev(host):
            components.host = host
        }
        components.path += "api".path
        components.path += api.rawValue.path
        components.path += route
        
        if !params.isEmpty {
            components.queryItems = params
        }
        
//        if let pagination {
//            components.path += "?page=\(pagination.page)&per=\(pagination.per)".path
//        }
        
        
        return components.url!
    }
}

extension String {
    var path: String {
        return "/\(self)"
    }
}
