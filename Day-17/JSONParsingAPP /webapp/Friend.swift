//
//  Friend.swift
//  webapp
//
//  Created by Bronson Dupaix on 2/23/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation

class Friend {
    
    //    let dict = JSONDictionary
    
    var login: String = ""
    
    var id: Int = 0
    
    var avatarURL: String = ""
    
    var gravatarID: String = ""
    
    var url: String = ""
    
    var htmlURL: String = ""
    
    var followersURL: String = ""
    
    var followingURL: String = ""
    
    var gistsURL: String = ""
    
    var starredURL: String = ""
    
    var subscriptionsURL: String = ""
    
    var organizationsURL: String = ""
    
    var reposURL: String = ""
    
    var eventsURL: String = ""
    
    var receivedEvents: String = ""
    
    var type: String = ""
    
    var siteAdmin: Bool = false
    
    var name: String = ""
    
    var company: String = ""
    
    var blog: String = ""
    
    var locations: String = ""
    
    var email: String = ""
    
    var hireable: String = ""
    
    var bio: String =  ""
    
    var publicRepos: Int = 0
    
    var publicGists: Int = 0
    
    var followers: Int = 0
    
    var following: Int = 0
    
    var createdAt: String = ""
    
    var updatedAt: String = ""
    
    init() {
        
    }
    
    init(dict: JSONDictionary) {
        
        
        
        if let login = dict["login"] as? String {
            self.login = login
        } else {
            print("no login")
        }
        
        if let id = dict["id"] as? Int {
            self.id = id
        } else {
            print("no id")
        }
        
        if let avatar = dict["avatar_url"] as? String {
            self.avatarURL = avatar
        } else {
            print("no avatar")
        }
        
        if let gravatar = dict["gravatar_id"] as? String {
            self.gravatarID = gravatar
        } else {
            print("no gravatar")
        }
        
        if let url = dict["url"] as? String {
            
            self.url = url
        } else {
            print("no url")
        }
        
        if let html = dict["html_url"] as? String {
            
            self.htmlURL = html
        } else{
            print("no html")
        }
        
        if let followers = dict["followers_url"] as? String {
            
            self.followersURL = followers
        } else {
            print("No followers")
        }
        
        if let following = dict["following_url"] as? String {
            self.followingURL = following
        } else {
            print("no following")
        }
        
        if let gists = dict["gists_url"] as? String{
            self.gistsURL = gists
        } else {
            
            print("no gists")
        }
        
        if let starred = dict["starred_url"] as? String {
            self.starredURL = starred
        } else {
            print(" no starred")
        }
        
        if let subscription = dict["subscriptions_url"] as? String {
            
            self.subscriptionsURL = subscription
        } else {
            print("no subscription")
        }
        
        if let organization = dict["organizations_url"] as? String{
            
            self.organizationsURL = organization
        } else {
            print("no organization")
        }
        
        if let repos = dict["repos_url"] as? String {
            
            self.reposURL = repos
        } else {
            print("no repos")
        }
        
        if let events = dict["events_url"] as? String {
            
            self.eventsURL = events
        } else {
            print("no events")
        }
        
        if let receivedEvent = dict["received_events_url"] as? String {
            
            self.receivedEvents = receivedEvent
        } else {
            
            print("no received events")
        }
        
        if let types = dict["type"] as? String {
            
            self.type = types
        } else {
            
            print("no type")
        }
        
        if let siteAdmins = dict["site_admin"] as? Bool {
            
            self.siteAdmin = siteAdmins
            
        } else {
            
            print("no admins")
            
        }
        
        if let names = dict["name"] as? String {
            
            self.name = names
            
                //print(name)
        } else {
            print("no names")
        }
        
        if let companies = dict["company"] as? String {
            self.company = companies
        } else {
            
            print("no company")
        }
        
        if let blogs = dict["blog"] as? String {
            
            self.blog = blogs
        } else {
            print("no blogs")
        }
        
        if let location = dict["location"] as? String {
            
            self.locations = location
        } else {
            
            print("  no location")
        }
        
        
        if let emails = dict["email"] as? String {
            
            self.email = emails
        } else {
            
            print("no emails")
        }
        
        if let hireables = dict["hireable"] as? String{
            
            self.hireable = hireables
            
        } else {
            
            print(" not hireable")
        }
        
        if let bios = dict["bio"] as? String {
            
            self.bio = bios
        } else {
            
            print("no bio")
        }
        
        
        if let publicRepo = dict["public_repos"] as? Int {
            
            self.publicRepos = publicRepo
        } else {
            
            print(" no public repo")
        }
        
        if let publicGist = dict["public_gists"] as? Int {
            
            self.publicGists = publicGist
        } else {
            
            print(" No public gists")
        }
        
        if let follower = dict["followers"] as? Int {
            
            self.followers = follower
        } else {
            
            print(" no followers")
        }
        
        if let followings = dict["following"] as? Int {
            
            
            self.following = followings
        } else {
            
            print(" no following")
        }
        
        if let createdDate = dict["created_at"] as? String {
            
            self.createdAt = createdDate
        } else {
            
            print("no created date")
        }
        
        if let updatedDate = dict["updated_at"] as? String {
            
            self.updatedAt = updatedDate
        } else {
            
            print("no updated date")
        }
        
        
    }
    
}