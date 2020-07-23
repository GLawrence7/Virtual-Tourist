//
//  PhotoSearchRequest.swift
//  Virtual-Tourist
//
//  Created by George on 22/07/2020.
//  Copyright © 2020 Master. All rights reserved.
//

import Foundation

struct PhotoSearchRequest: Codable {
    let method: String
    let apiKey: String
    let accuracy: Int
    let lat: Double
    let lon: Double
    let format: String
    
    enum CodingKeys: String, CodingKey {
        case method
        case apiKey = "api_key"
        case accuracy
        case lat
        case lon
        case format
    }
}
