//
//  UserSingleton.swift
//  SnapchatCloneProject
//
//  Created by Şeyma Nur on 14.05.2021.
//

import Foundation
class UserSingleton{
    static let sharedUserInfo = UserSingleton()
    
    var email = ""
    var username = ""
    private init(){
        
    }
}
