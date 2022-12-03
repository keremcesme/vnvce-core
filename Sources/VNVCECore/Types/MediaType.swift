
import Foundation

public enum MediaType: String, Codable {
    case image, movie
    
#if canImport(Vapor)
    public static let schema =  "media_type"
#endif
}

