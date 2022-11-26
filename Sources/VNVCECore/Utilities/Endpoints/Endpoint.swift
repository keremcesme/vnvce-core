
import Foundation


public struct Endpoint {
    public enum HTTPMethod: String {
        case GET
        case POST
        case PUT
        case PATCH
        case DELETE
    }
    
#if os(iOS)
    private let scheme = "https"
    private let host = "vnvce.com"
    private let apiPath = "/api/"
    
    public var baseURL: URL {
        var components = URLComponents()
          components.scheme = scheme
          components.host = host
          components.path += apiPath
        return components.url!
    }
#endif
    
}


