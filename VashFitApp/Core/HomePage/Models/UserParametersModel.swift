import Foundation
import Combine

class UserParametersModel: ObservableObject, Codable {
    @Published var name: String?
    @Published var age: Double?
    @Published var weight: Double?
    @Published var height: Double?
    @Published var gender: Gender?
    @Published var waterAmount: WaterAmount?
    @Published var activities: Activities?
    @Published var bodyType: BodyType?
    @Published var goal: MainGoal?

    // Обычный инициализатор без параметров
    init() { }
    
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
    
    // Методы кодирования и декодирования для @Published
    private enum CodingKeys: String, CodingKey {
        case name, age, weight, height, gender, waterAmount, activities, bodyType, goal
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decodeIfPresent(String.self, forKey: .name)
        age = try container.decodeIfPresent(Double.self, forKey: .age)
        weight = try container.decodeIfPresent(Double.self, forKey: .weight)
        height = try container.decodeIfPresent(Double.self, forKey: .height)
        gender = try container.decodeIfPresent(Gender.self, forKey: .gender)
        waterAmount = try container.decodeIfPresent(WaterAmount.self, forKey: .waterAmount)
        activities = try container.decodeIfPresent(Activities.self, forKey: .activities)
        bodyType = try container.decodeIfPresent(BodyType.self, forKey: .bodyType)
        goal = try container.decodeIfPresent(MainGoal.self, forKey: .goal)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(age, forKey: .age)
        try container.encodeIfPresent(weight, forKey: .weight)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(gender, forKey: .gender)
        try container.encodeIfPresent(waterAmount, forKey: .waterAmount)
        try container.encodeIfPresent(activities, forKey: .activities)
        try container.encodeIfPresent(bodyType, forKey: .bodyType)
        try container.encodeIfPresent(goal, forKey: .goal)
    }
}
