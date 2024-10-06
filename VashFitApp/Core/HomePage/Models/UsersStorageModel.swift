//
//  UsersStorageModel.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 06/10/2024.
//

import Foundation


class UsersStorageModel: ObservableObject, Identifiable {
    @Published var storage:[String: UserParametersModel] = ["1":UserParametersModel(name: "Oleg", age: 18, weight: 81, height: 181, gender: .male, waterAmount: .twoOrMore, activities: .gym, bodyType: .muscular, goal: .notSure)]
}
