
import Foundation

public final class AuthAPI {
    public struct V1 {
        public static let shared = V1()
        
        private static let api = "auth"
        
        private static let check = "check".path
        private static let create = "create".path
        private static let login = "login".path
        private static let token = "token".path
        
        // Check
        public let checkPhoneNumber = api + check + "phone-number".path
        public let checkUsername = api + check + "username".path
        
        // Create
        public let reserveUsernameSendOTP = api + create + "reserve-username-and-send-sms-otp".path
        public let createAccount = api + create + "account".path
        
        // Login
        public let checkPhoneNumberSendOTP = api + login + "check-phone-number-and-send-otp".path
        public let verifyOTPGenerateTokens = api + login + "verify-otp-and-generate-tokens".path
        
        // Token
        public let authorize = api + token + "authorize".path
        public let reauthorize = api + token + "reauthorize".path
        public let generateTokens = api + token + "generate-tokens".path
        public let generateAccessToken = api + token + "generate-access-token".path
        
        public init() {}
    }
}
