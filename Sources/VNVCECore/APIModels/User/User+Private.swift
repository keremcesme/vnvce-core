//
//  File.swift
//  
//
//  Created by Kerem Cesme on 21.01.2023.
//

import Foundation

extension User.V1 {
    public struct Private: Codable {
        public let id: UUID
        public let username: Username.V1
        public let phoneNumber: String
        public let displayName: String?
        public let profilePicture: ProfilePicture.V1?
        public let dateOfBirthYear: Int
        public let createdAt: TimeInterval
        
        public init(id: UUID, username: Username.V1, phoneNumber: String, displayName: String?, profilePicture: ProfilePicture.V1?, dateOfBirthYear: Int, createdAt: TimeInterval) {
            self.id = id
            self.username = username
            self.phoneNumber = phoneNumber
            self.displayName = displayName
            self.profilePicture = profilePicture
            self.dateOfBirthYear = dateOfBirthYear
            self.createdAt = createdAt
        }
        
        enum CodingKeys: String, CodingKey {
            case id
            case username
            case phoneNumber = "phone_number"
            case displayName = "display_name"
            case profilePicture = "profile_picture"
            case dateOfBirthYear = "date_of_birth_year"
            case createdAt = "created_at"
        }
    }
}
