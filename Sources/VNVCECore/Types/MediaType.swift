
import Foundation

enum MediaType: String, Codable {
    case image, movie
    
#if (os(macOS) || os(Linux)) && canImport(Vapor)
    static let schema =  "media_type"
#endif
}

