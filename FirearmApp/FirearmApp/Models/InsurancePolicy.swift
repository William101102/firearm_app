import Foundation

struct InsurancePolicy: Identifiable, Codable {
    let id: UUID
    var policyName: String
    var coverageType: String
    var provider: String
    var expirationDate: Date
    var premium: Double
    var complianceNotes: String
}
