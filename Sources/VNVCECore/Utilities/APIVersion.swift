
import Foundation

public enum APIVersion: String, CaseIterable {
    case v1
    case v2
    case v3
    case v4
    case v5
    case v6
    case v7
    case v8
    case v9
    case v10
    
    static func withLabel(_ label: String) -> APIVersion? {
        return self.allCases.first{ "\($0)" == label }
    }
}
