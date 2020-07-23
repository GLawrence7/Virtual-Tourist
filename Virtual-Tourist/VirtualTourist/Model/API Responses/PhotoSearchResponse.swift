//
//  PhotoSearchResponse.swift
//  Virtual-Tourist
//
//  Created by George on 22/07/2020.
//  Copyright © 2020 Master. All rights reserved.
//

import Foundation

struct PhotoSearchResponse: Codable {
    let photos: LocationAlbum
    
    enum CodingKeys: String, CodingKey {
        case photos
    }
}
