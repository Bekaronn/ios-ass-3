import Foundation

struct Hero: Decodable, Equatable {
    let id: Int
    let name: String
    let images: Image
    let biography: Biography
    let powerstats: Powerstats
    let appearance: Appearance
    
    var imageUrl: URL? { URL(string: images.md) }
    
    struct Image: Decodable, Equatable { let md: String }
    struct Biography: Decodable, Equatable {
        let fullName: String
        let alterEgos: String
        let placeOfBirth: String
        let alignment: String
    }
    struct Powerstats: Decodable, Equatable {
        let intelligence: Int
        let strength: Int
        let speed: Int
        let durability: Int
        let power: Int
        let combat: Int
    }
    struct Appearance: Decodable, Equatable {
        let gender: String
        let race: String?  // ✅ Делаем опциональным
        let height: [String]
        let weight: [String]
        let eyeColor: String
        let hairColor: String
    }

}
