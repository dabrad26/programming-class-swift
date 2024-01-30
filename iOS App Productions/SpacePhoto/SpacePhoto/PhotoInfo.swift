//
//  PhotoInfo.swift
//  SpacePhoto
//
//  Created by David Bradshaw on 1/29/24.
//

import Foundation
import UIKit

struct PhotoInfo: Codable {
    var title: String;
    var description: String;
    var url: URL;
    var copyright: String?
    var image: UIImage?
    
    enum CodingKeys: String, CodingKey {
        case title
        case description = "explanation"
        case url
        case copyright
    }
}
