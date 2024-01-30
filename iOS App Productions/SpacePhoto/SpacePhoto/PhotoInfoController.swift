//
//  PhotoInfoController.swift
//  SpacePhoto
//
//  Created by David Bradshaw on 1/29/24.
//

import Foundation
import UIKit

class PhotoInfoController {
    enum PhotoInfoError: Error, LocalizedError {
        case itemNotFound
        case imageNotFound
        case noImageData
    }

    func fetchPhotoInfo() async throws -> PhotoInfo {
        var urlComponents = URLComponents(string: "https://api.nasa.gov/planetary/apod")!
        urlComponents.queryItems = [
            "api_key": "oONNnS2MnrrWreKpn1hWWPVic73tgdVYUnzpdI1b",
        ].map { URLQueryItem(name: $0.key, value: $0.value) }

        let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw PhotoInfoError.itemNotFound
        }
        
        let jsonDecoder = JSONDecoder()
        var photoDictionary = try jsonDecoder.decode(PhotoInfo.self, from: data)
        photoDictionary.image = try await fetchImage(from: photoDictionary.url)
        
        return photoDictionary
    }
    
    func fetchImage(from url: URL) async throws -> UIImage {
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw PhotoInfoError.imageNotFound
        }
        
        guard let image = UIImage(data: data) else {
            throw PhotoInfoError.noImageData
        }
        
        return image
    }
}
