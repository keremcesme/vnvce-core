
import Foundation

public enum DeviceOS: String, Codable {
    case ios, android
    
#if (os(macOS) || os(Linux)) && canImport(Vapor)
    public static let schema =  "device_os"
#endif
}
