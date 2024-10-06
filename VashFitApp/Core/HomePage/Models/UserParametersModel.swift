import Foundation
import Combine

class UserParametersModel: ObservableObject, Identifiable {
    @Published var name: String?
    @Published var age: Double?
    @Published var weight: Double?
    @Published var height: Double?
    @Published var gender: Gender?
    @Published var waterAmount: WaterAmount?
    @Published var activities: Activities?
    @Published var bodyType: BodyType?
    @Published var goal: MainGoal?
    
    init(name: String? = nil, age: Double? = nil, weight: Double? = nil, height: Double? = nil, gender: Gender? = nil, waterAmount: WaterAmount? = nil, activities: Activities? = nil, bodyType: BodyType? = nil, goal: MainGoal? = nil) {
        self.name = name
        self.age = age
        self.weight = weight
        self.height = height
        self.gender = gender
        self.waterAmount = waterAmount
        self.activities = activities
        self.bodyType = bodyType
        self.goal = goal
    }
    
    // Перечисления
    enum Gender: String, Codable {
        case male
        case female
    }
    
    enum WaterAmount: String, Codable {
        case zeroToOne
        case oneToTwo
        case twoOrMore
    }
    
    enum Activities: String, Codable {
        case dancing
        case swim
        case gym
        case walking
        case football
        case skate
    }
    
    enum BodyType: String, Codable {
        case slim
        case average
        case athletic
        case broad
        case muscular
        case notSure
    }
    
    enum MainGoal: String, Codable {
        case loseWeight
        case gainMuscleMass
        case stayFit
        case notSure
    }
}
