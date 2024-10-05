//
//  GlobalPersonModel.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 05/10/2024.
//

import Foundation
// Users person model
class GlobalPersonModel {
    var weight: Double?
    var height: Double?
    var gender: Gender?
    var age: Double?
    var bodyType: BodyType?
    var mainGoal: MainGoal?
    var activities: Activities?
    var drinkWater: DrinkWater?
    var name: String?
    
    init(weight: Double? = nil, height: Double? = nil, gender: Gender? = nil, age: Double? = nil, bodyType: BodyType? = nil, mainGoal: MainGoal? = nil, activities: Activities? = nil, drinkWater: DrinkWater? = nil, name: String? = nil) {
        self.weight = weight
        self.height = height
        self.gender = gender
        self.age = age
        self.bodyType = bodyType
        self.mainGoal = mainGoal
        self.activities = activities
        self.drinkWater = drinkWater
        self.name = name
    }
    
    enum Activities {
        case dancing
        case swim
        case gym
        case wallking
        case football
        case skate
    }
    
    enum DrinkWater {
        case zeroToOne
        case oneToTwo
        case twoToMore
    }
    
    enum BodyType {
        case slim
        case average
        case athletic
        case broad
        case muscular
        case notSure
    }
    
    enum MainGoal {
        case loseWeight
        case gainMuscleMass
        case stayFit
        case notSure
    }
    
    enum Gender {
        case male
        case female
    }
    // Calculate the BMI
    func bmiCalculate(weight: Double?, height: Double?) -> Double? {
        var bmi: Double = 0
        guard let weight = weight, let height = height else {
            return nil
        }
        bmi = weight / (height * height)
        return bmi
    }
    // Calculate the BMR (gender switch)
    func bmrCalculate(age: Double?, gender: Gender?, height: Double?, weight: Double?) -> Double? {
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
    // TDEE Calculate on activities
    func activitiesCalculate(bmr: Double?, activities: Activities?) -> Double? {
        let lowActive = 1.2
        let normalActive = 1.55
        let highActive = 1.9
        guard let bmr = bmr, let activities = activities else {
            return nil
        }
        switch activities {
        case .dancing, .swim, .gym, .football:
            return bmr * highActive
        case .wallking:
            return bmr * normalActive
        case .skate:
            return bmr * lowActive
        }
    }
    // Water drink recomends
    func waterCalculate(weight: Double?, activities: Activities?) -> Double? {
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
        case .wallking:
            return weight / formulConstant * normalActive
        case .skate:
            return weight / formulConstant * lowActive
        }
    }
    // Final resul for peron to all stats 
    func finalResultCalculate() -> [String: Double]? {
        var resultReturn: [String: Double] = [:]
        guard let age = age, let height = height, let weight = weight, let gender = gender, let activities = activities else {
            return nil
        }
        if let bmi = bmiCalculate(weight: weight, height: height) {
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
