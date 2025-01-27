import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("Type", selection: $viewModel.selectedType) {
                    Text("All").tag(Firearm.FirearmType?.none)
                    Text("Pistol").tag(Firearm.FirearmType?.some(.pistol))
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                List(viewModel.filterFirearms()) { firearm in
                    Text(firearm.name).font(.headline)
                }
            }
            .navigationTitle("Home")
        }
    }
}
