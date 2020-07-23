//
//  ErrorResponse.swift
//  Virtual-Tourist
//
//  Created by George on 22/07/2020.
//  Copyright © 2020 Master. All rights reserved.
//

import Foundation

struct ErrorResponse: Codable {
    let code: Int
    let message: String
    
    enum CodingKeys: String, CodingKey {
        case code
        case message
    }
}

extension ErrorResponse: LocalizedError {
    var errorDescription: String? {
        return "\(code): \(message)"
    }
}
