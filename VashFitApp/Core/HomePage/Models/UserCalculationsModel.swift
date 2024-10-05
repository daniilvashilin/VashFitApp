//
//  UserCalculationsModel.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 05/10/2024.
//

import Foundation

class UserCalculationsModel {
    
    func bmiCalculate(user: UserParametersModel) -> Double? {
        guard let weight = user.weight, let height = user.height else {
            return nil
        }
        return weight / (height * height)
    }
    
    func bmrCalculate(age: Double?, gender: UserParametersModel.Gender?, height: Double?, weight: Double?) -> Double? {
        let maleIndex = 88.36
        let femaleIndex = 447.6
        guard let age = age, let gender = gender, let height = height, let weight = weight else {
            return nil
        }
        switch gender {
        case .male:
            return maleIndex + (13.4 * weight) + (4.8 * height) - (5.7 * age)
        case .female:
            return femaleIndex + (9.2 * weight) + (3.1 * height) - (4.3 * age)
        }
    }

    func activitiesCalculate(bmr: Double?, activities: UserParametersModel.Activities?) -> Double? {
        let lowActive = 1.2
        let normalActive = 1.55
        let highActive = 1.9
        guard let bmr = bmr, let activities = activities else {
            return nil
        }
        switch activities {
        case .dancing, .swim, .gym, .football:
            return bmr * highActive
        case .walking:
            return bmr * normalActive
        case .skate:
            return bmr * lowActive
        }
    }
    
    func waterCalculate(weight: Double?, activities: UserParametersModel.Activities?) -> Double? {
        let lowActive = 1.0
        let normalActive = 1.2
        let highActive = 1.5
        let formulConstant: Double = 30
        guard let weight = weight, let activities = activities else {
            return nil
        }
        switch activities {
        case .dancing, .swim, .gym, .football:
            return weight / formulConstant * highActive
        case .walking:
            return weight / formulConstant * normalActive
        case .skate:
            return weight / formulConstant * lowActive
        }
    }

    func finalResultCalculate(for user: UserParametersModel) -> [String: Double]? {
        var resultReturn: [String: Double] = [:]
        guard let age = user.age, let height = user.height, let weight = user.weight, let gender = user.gender, let activities = user.activities else {
            return nil
        }
        
        if let bmi = bmiCalculate(user: user) {
            resultReturn["bmi"] = bmi
        }
        if let bmr = bmrCalculate(age: age, gender: gender, height: height, weight: weight) {
            resultReturn["bmr"] = bmr
            if let tdee = activitiesCalculate(bmr: bmr, activities: activities) {
                resultReturn["tdee"] = tdee
            }
        }
        return resultReturn
    }
}
