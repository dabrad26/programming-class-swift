import UIKit

var itunesApi = URLComponents(string: "https://itunes.apple.com/search")!
itunesApi.queryItems = [
    "term": "Harry Potter",
    "media": "movie",
    "limit": "1",
].map { URLQueryItem(name: $0.key, value: $0.value) }


Task {
    let (data, response) = try await URLSession.shared.data(from: itunesApi.url!)
    let httpResonse = response as? HTTPURLResponse;
    
    if (httpResonse?.statusCode == 200) {
        let dataString = String(data: data, encoding: .utf8)
        
        print(dataString!)
    } else {
        let dataString = String(data: data, encoding: .utf8)
        
        print("API call failed!")
        print(dataString!)
    }
}

