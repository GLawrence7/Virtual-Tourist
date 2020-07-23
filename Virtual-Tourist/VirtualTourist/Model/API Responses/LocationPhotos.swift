//
//  LocationPhotos.swift
//  Virtual-Tourist
//
//  Created by George on 22/07/2020.
//  Copyright © 2020 Master. All rights reserved.
//

import Foundation

struct LocationPhotos: Codable {
    let id: String
    let owner: String
    let secret: String
    let server: String
    let farm: Int
    let title: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case owner
        case secret
        case server
        case farm
        case title
    }
}
