//
//  Profile.swift
//  ImageFeed
//
//  Created by TATIANA VILDANOVA on 18.10.2023.
//

import Foundation

struct Profile {
    let userName: String
    let name: String
    let loginName: String
    let bio: String?
    
    
    init(callData: ProfileResult) {
        self.userName = callData.userName
        self.name = (callData.firstName) + " " + (callData.lastName ?? "")
        self.loginName = "@" + (callData.userName )
        self.bio = callData.bio
    }
}
