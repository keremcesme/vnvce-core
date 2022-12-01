
import Foundation

public enum MediaType: String, Codable {
    case image, movie
    
#if (os(macOS) || os(Linux)) && canImport(Vapor)
    public static let schema =  "media_type"
#endif
}

