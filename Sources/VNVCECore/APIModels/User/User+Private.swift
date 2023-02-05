//
//  File.swift
//  
//
//  Created by Kerem Cesme on 21.01.2023.
//

import Foundation

extension User.V1 {
    public struct Private: Codable, Equatable, Hashable {
        public let id: UUID
        public var username: Username.V1
        public var phoneNumber: String
        public var displayName: String?
        public var profilePicture: ProfilePicture.V1?
        public let dateOfBirthYear: Int
        public let notificationToken: String?
        public let createdAt: TimeInterval
        
        public init(id: UUID, username: Username.V1, phoneNumber: String, displayName: String?, profilePicture: ProfilePicture.V1?, dateOfBirthYear: Int, notificationToken: String?, createdAt: TimeInterval) {
            self.id = id
            self.username = username
            self.phoneNumber = phoneNumber
            self.displayName = displayName
            self.profilePicture = profilePicture
            self.dateOfBirthYear = dateOfBirthYear
            self.notificationToken = notificationToken
            self.createdAt = createdAt
        }
        
        enum CodingKeys: String, CodingKey {
            case id
            case username
            case phoneNumber = "phone_number"
            case displayName = "display_name"
            case profilePicture = "profile_picture"
            case dateOfBirthYear = "date_of_birth_year"
            case notificationToken = "notification_token"
            case createdAt = "created_at"
        }
    }
}
