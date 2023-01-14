
import Foundation

public final class AuthRoutes {
    public struct V1 {
        public static let shared = V1()
        
        private static let check = "check".path
        private static let create = "create".path
        private static let login = "login".path
        private static let token = "token".path
        
        // Check
        public let checkPhoneNumber = check + "phone-number".path
        public let checkUsername = check + "username".path
        
        // Create
        public let reserveUsernameSendOTP = create + "reserve-username-and-send-sms-otp".path
        public let createAccount = create + "account".path
        
        // Login
        public let checkPhoneNumberSendOTP = login + "check-phone-number-and-send-otp".path
        public let verifyOTPGenerateTokens = login + "verify-otp-and-generate-tokens".path
        
        // Token
        public let authorize = token + "authorize".path
        public let reauthorize = token + "reauthorize".path
        public let generateTokens = token + "generate-tokens".path
        public let generateAccessToken = token + "generate-access-token".path
        
        public let logout = "logout".path
        
        public init() {}
    }
}
