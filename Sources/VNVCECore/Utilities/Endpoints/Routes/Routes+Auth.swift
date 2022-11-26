
import Foundation

extension Routes {
    public struct Auth {
        public let path: String = "auth"
        
        public let check = Check()
        public let create = Create()
        public let login = Login()
        public let token = Token()
    }
}

extension Routes.Auth {
    public struct Check {
        public let path: String = "check"
        
        public let phoneNumber: RouteDefinition =
            .init(method: .POST, path: "phone-number")
        
        public let username: RouteDefinition =
            .init(method: .POST, path: "username")
    }
}

extension Routes.Auth {
    public struct Create {
        public let path: String = "create"
    }
}

extension Routes.Auth {
    public struct Login {
        public let path: String = "login"
    }
}

extension Routes.Auth {
    public struct Token {
        public let path: String = "token"
    }
}
