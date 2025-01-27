import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var firearms: [Firearm] = []
    @Published var selectedType: Firearm.FirearmType? = nil

    init() {
        fetchFirearms()
    }

    func fetchFirearms() {
        firearms = MockData.sampleFirearms
    }

    func filterFirearms() -> [Firearm] {
        firearms.filter { firearm in
            if let type = selectedType, firearm.firearmType != type {
                return false
            }
            return true
        }
    }
}
