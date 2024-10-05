//
//  UserDataStorageModel.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 05/10/2024.
//

import Foundation
import Combine

class UserDataStorageModel: ObservableObject {
    @Published var usersStorage: [UUID: UserParametersModel] = [:]
    
    func saveToDefaults() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(usersStorage) {
            UserDefaults.standard.set(encoded, forKey: "usersStorage")
        }
    }
    
    func loadFromDefaults() {
        if let savedUsers = UserDefaults.standard.data(forKey: "usersStorage") {
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([UUID: UserParametersModel].self, from: savedUsers) {
                usersStorage = decoded
            }
        }
    }
}
