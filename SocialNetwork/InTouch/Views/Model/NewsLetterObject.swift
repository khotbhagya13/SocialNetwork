//
//  NewsLetterObject.swift
//  InTouch
//
//  Created by BK on 2024/06/23.
//

import FirebaseFirestore
import UIKit

struct NewsLetter: Codable {
    var date: Date
    var newsId: String
    var newsCover: String
    var posts: [Post]
    var title: String

    enum CodingKeys: String, CodingKey {
        case date
        case newsId = "news_id"
        case newsCover = "news_cover"
        case posts
        case title
    }
}

struct Post: Codable {
    var date: Date = .init()
    var postId: String = ""
    var userId: String = ""
    var userIcon: String = ""
    var userName: String = ""
    var imageBlocks: [ImageBlock] = []
    var textBlocks: [TextBlock] = []
    var audioBlocks: [AudioBlock] = []

    enum CodingKeys: String, CodingKey {
        case date
        case postId = "post_id"
        case userId = "user_id"
        case userIcon = "user_icon"
        case userName = "user_name"
        case imageBlocks = "image_blocks"
        case textBlocks = "text_blocks"
        case audioBlocks = "audio_blocks"
    }
}

struct ImageBlock: Codable {
    var caption: String
    var image: String
    var location: GeoPoint?
    var place: String?

    enum CodingKeys: String, CodingKey {
        case caption
        case image
        case location
        case place
    }
}

struct TextBlock: Codable {
    var title: String
    var content: String
}

struct AudioBlock: Codable {
    var audioUrl: String
}
