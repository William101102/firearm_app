import Foundation

struct MockData {
    static let sampleFirearms: [Firearm] = {
        let firearm1 = Firearm(
            id: UUID(),
            name: "Glock 19",
            brand: "Glock",
            firearmType: .pistol,
            purchaseDate: Date(),
            maintenanceRecords: [
                MaintenanceRecord(date: Date(timeIntervalSinceNow: -86400), details: "Cleaned slide and barrel")
            ],
            historicalBackground: "The Glock 19 is a compact version of the Glock 17. Introduced in 1988...",
            performanceData: PerformanceData(accuracy: 85.0, range: 50.0)
        )
        let firearm2 = Firearm(
            id: UUID(),
            name: "Remington 700",
            brand: "Remington",
            firearmType: .rifle,
            purchaseDate: Date(),
            maintenanceRecords: [
                MaintenanceRecord(date: Date(timeIntervalSinceNow: -200000), details: "Replaced stock, general cleaning")
            ],
            historicalBackground: "The Remington Model 700 is a bolt-action rifle first manufactured in 1962...",
            performanceData: PerformanceData(accuracy: 92.0, range: 200.0)
        )
        return [firearm1, firearm2]
    }()
}
