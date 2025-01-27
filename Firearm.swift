import Foundation

struct Firearm: Identifiable, Codable {
    enum FirearmType: String, Codable {
        case pistol, rifle, shotgun, sniper
    }
    
    let id: UUID
    var name: String
    var brand: String
    var firearmType: FirearmType
    var purchaseDate: Date
    var maintenanceRecords: [MaintenanceRecord]
    var historicalBackground: String
    var performanceData: PerformanceData
}