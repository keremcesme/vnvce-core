
import Foundation

public struct MomentLocation: Codable, Equatable, Hashable {
    public let latitude: Double
    public let longitude: Double
    
    public init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    enum CodingKeys: String, CodingKey {
        case latitude
        case longitude
    }
}
