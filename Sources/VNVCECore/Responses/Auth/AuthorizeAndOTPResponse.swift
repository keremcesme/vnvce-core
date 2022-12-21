
import Foundation

public final class AuthorizeAndOTPResponse {
    public struct V1: Codable {
        public let otp: OTPResponse.V1
        public let authorize: AuthorizeResponse.V1
        public init(_ otp: OTPResponse.V1, _ authorize: AuthorizeResponse.V1) {
            self.otp = otp
            self.authorize = authorize
        }
    }
}
