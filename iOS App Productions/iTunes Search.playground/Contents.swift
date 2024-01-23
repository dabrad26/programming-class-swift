import UIKit

extension Data {
    func prettyPrintedJSONString() {
        guard 
            let jsonObject = try? JSONSerialization.jsonObject(with: self, options: []),
            let jsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: [.prettyPrinted]),
            let prettyJSONString = String(data: jsonData, encoding: .utf8) else {
            print("Failed to make JSON pretty")
            return
        }
        
        print(prettyJSONString)
    }
}

struct StoreItem: Codable {
    var artistName: String?
    var trackName: String?
    var kind: String?
    var artworkURL: URL?
    var genre: String?
    var description: String?
    
    enum CodingKeys: String, CodingKey {
        case artistName
        case trackName
        case kind
        case artworkURL = "artworkUrl60"
        case description
        case genre = "primaryGenreName"
    }
    
    enum AdditionalKeys: String, CodingKey {
        case longDescription
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        artistName = try values.decode(String.self, forKey: CodingKeys.artistName)
        trackName = try values.decode(String.self, forKey: CodingKeys.trackName)
        kind = try values.decode(String.self, forKey: CodingKeys.kind)
        artworkURL = try values.decode(URL.self, forKey:
           CodingKeys.artworkURL)
        
        if let genre = try? values.decode(String.self,
           forKey: CodingKeys.genre) {
            self.genre = genre
        }
        
        if let description = try? values.decode(String.self,
           forKey: CodingKeys.description) {
            self.description = description
        } else {
            let additionalValues = try decoder.container(keyedBy:
               AdditionalKeys.self)
            description = (try? additionalValues.decode(String.self,
               forKey: AdditionalKeys.longDescription))
        }
    }
}

struct SearchResponse: Codable {
    let results: [StoreItem]
}

enum SearchResponseError: Error, LocalizedError {
    case errorResponse
}

func fetchItems(matching query: [String: String]) async throws -> [StoreItem] {
    var itunesApi = URLComponents(string: "https://itunes.apple.com/search")!
    itunesApi.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
    
    let (data, response) = try await URLSession.shared.data(from: itunesApi.url!)
    
    guard let httpResponse = response as? HTTPURLResponse,
          httpResponse.statusCode == 200 else {
        throw SearchResponseError.errorResponse
    }
    
//    print(data.prettyPrintedJSONString())
    let jsonDecoder = JSONDecoder()
    let results = try jsonDecoder.decode(SearchResponse.self, from: data)
    return results.results
}

Task {
    do {
        // Possible media: `music`, `ebook`, `movie`
        let results = try await fetchItems(matching: ["term": "Apple", "media": "movie"])
        results.forEach { item in
            print("""
            ============
                Artist name: \(item.artistName ?? "NO VALUE")
                Track name: \(item.trackName ?? "NO VALUE")
                Kind: \(item.kind ?? "NO VALUE")
                Genre: \(item.genre ?? "NO VALUE")
                Description: \(item.description ?? "NO VALUE")
                Artwork URL: \(item.artworkURL?.absoluteString ?? "NO VALUE")
            ============
            """)
            
        }
    } catch {
        print(error)
    }
}
