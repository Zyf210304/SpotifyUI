//
//  Song.swift
//  SpotifyUI
//
//  Created by 张亚飞 on 2021/6/9.
//

import SwiftUI

struct Song: Identifiable {
    
    var id = UUID().uuidString
    var album_name : String
    var album_author : String
    var album_cover : String
    
}

var recentlyPlayed = [

    Song(album_name: "name2", album_author: "author2", album_cover: "p2"),
    Song(album_name: "name3", album_author: "author3", album_cover: "p3"),
    Song(album_name: "name4", album_author: "author4", album_cover: "p4"),
    Song(album_name: "name5", album_author: "author5", album_cover: "p5")
    
]

var likedSongs = [

    Song(album_name: "name6", album_author: "author6", album_cover: "p6"),
    Song(album_name: "name7", album_author: "author7", album_cover: "p7"),
    Song(album_name: "name8", album_author: "author8", album_cover: "p8"),
    Song(album_name: "name9", album_author: "author9", album_cover: "p9"),
    Song(album_name: "name10", album_author: "author10", album_cover: "p10"),
    Song(album_name: "name11", album_author: "author11", album_cover: "p11"),
    Song(album_name: "name12", album_author: "author12", album_cover: "p12"),
    Song(album_name: "name13", album_author: "author13", album_cover: "p13"),
    Song(album_name: "name14", album_author: "author14", album_cover: "p14"),
    Song(album_name: "name15", album_author: "author15", album_cover: "p15")
    
]

var genres = ["Classic", "Hip-Hop", "Electronic", "Chilout", "Dark", "Calm", "Ambient", "Dance"]
