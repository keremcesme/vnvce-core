
import Foundation

import Foundation

enum DeviceOS: String, Codable {
    case ios, android
    
#if (os(macOS) || os(Linux)) && canImport(Vapor)
    static let schema =  "device_os"
#endif
}
