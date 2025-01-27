import Foundation

struct User: Identifiable, Codable {
    let id: UUID
    var name: String
    var location: String
    var ownedFirearms: [Firearm]
}