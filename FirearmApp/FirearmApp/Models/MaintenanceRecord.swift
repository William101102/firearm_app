import Foundation

struct MaintenanceRecord: Identifiable, Codable {
    let id: UUID
    let date: Date
    var details: String
    
    init(id: UUID = UUID(), date: Date, details: String) {
        self.id = id
        self.date = date
        self.details = details
    }
}
