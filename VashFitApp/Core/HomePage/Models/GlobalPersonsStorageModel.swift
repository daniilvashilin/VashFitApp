//
//  GlobalPersonsStorageModel.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 05/10/2024.
//
import Foundation
import SwiftUI

class GlobalPersonsStorageModel: ObservableObject {
    @Published var usersStorage: [GlobalPersonModel] = []
    
    func addPerson(person: GlobalPersonModel) {
        usersStorage.append(person)
    }
}


struct someNEwView: View {
    @ObservedObject private var vm = GlobalPersonsStorageModel()
    var body: some View {
        VStack {
            Button(action: {
                let newPerson = GlobalPersonModel(
                    weight: 75.3,
                    height: 178,
                    gender: .male,
                    age: 30,
                    bodyType: .athletic,
                    mainGoal: .stayFit,
                    activities: .gym,
                    drinkWater: .twoToMore,
                    name: "John Doe"
                )
                vm.addPerson(person: newPerson)
            }) {
                Text("Add User")
            }
            
            ForEach(vm.usersStorage.indices, id: \.self) { index in
                let user = vm.usersStorage[index]
                Text("Name: \(user.name ?? "Unknown"), Age: \(Int(user.age ?? 0)), Weight: \(String(format: "%.1f", user.weight ?? 0))")
                    .font(.largeTitle)
                    .foregroundStyle(.black)
            }
        }
    }
}
#Preview {
    someNEwView()
}
