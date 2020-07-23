//
//  LocationAlbum.swift
//  Virtual-Tourist
//
//  Created by George on 22/07/2020.
//  Copyright © 2020 Master. All rights reserved.
//

import Foundation

struct LocationAlbum: Codable {
    let photo: [LocationPhotos]
    let page: Int
    let pages: Int
    let perpage: Int
    
    enum CodingKeys: String, CodingKey {
        case photo
        case page
        case pages
        case perpage
    }
}
