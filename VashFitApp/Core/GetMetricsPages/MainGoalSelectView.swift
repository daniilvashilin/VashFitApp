import SwiftUI

struct MainGoalSelectView: View {
    enum Goal: String {
        case loseWeight = "Lose weight?"
        case gainMuscle = "Gain muscle mass?"
        case stayFit = "Stay fit?"
        case none
    }
    
    @State private var selectedGoal: Goal = .none
    @State private var testing = false
    var body: some View {
        ZStack {
            Color.backGroundMain
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Text("What is your main goal?")
                    .font(.custom("Kameron", size: 28))
                    .foregroundStyle(.text)
                    .padding()
                
                // Button for "Lose weight?"
                Button(action: {
                    selectedGoal = .loseWeight
                    testing = true
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(selectedGoal == .loseWeight ? .button : .clear)
                            .frame(width: 350, height: 80)
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.backGroundSecond)
                            .frame(width: 340, height: 70)
                            .overlay {
                                Text(Goal.loseWeight.rawValue)
                                    .font(.custom("Kameron", size: 25))
                                    .foregroundStyle(.text)
                            }
                    }
                })
                .padding(.horizontal)
                
                // Button for "Gain muscle mass?"
                Button(action: {
                    selectedGoal = .gainMuscle
                    testing = true
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(selectedGoal == .gainMuscle ? .button : .clear)
                            .frame(width: 350, height: 80)
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.backGroundSecond)
                            .frame(width: 340, height: 70)
                            .overlay {
                                Text(Goal.gainMuscle.rawValue)
                                    .font(.custom("Kameron", size: 25))
                                    .foregroundStyle(.text)
                            }
                    }
                })
                .padding(.horizontal)
                
                // Button for "Stay fit?"
                Button(action: {
                    selectedGoal = .stayFit
                    testing = true
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(selectedGoal == .stayFit ? .button : .clear)
                            .frame(width: 350, height: 80)
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.backGroundSecond)
                            .frame(width: 340, height: 70)
                            .overlay {
                                Text(Goal.stayFit.rawValue)
                                    .font(.custom("Kameron", size: 25))
                                    .foregroundStyle(.text)
                            }
                    }
                })
                .padding(.horizontal)
                
                Spacer()
                
                if testing == true {
                    
                    // Next button (disabled if no goal is selected)
                    ButtonStyleView(
                        buttonWidth: 200,
                        buttonHeight: 40,
                        backGround: .button,
                        textColor: .white,
                        cornerRadius: 10,
                        text: "Next",
                        action: {
                            print("Selected Goal: \(selectedGoal.rawValue)")
                        },
                        destination: ActivitiesSelectView(),
                        disableButton: .constant(testing)
                    )
                    .padding(.bottom)
                } else {
                    
                    ButtonStyleView(
                        buttonWidth: 200,
                        buttonHeight: 40,
                        backGround: .secondary,
                        textColor: .white,
                        cornerRadius: 10,
                        text: "Next",
                        action: {
                            print("Selected Goal: \(selectedGoal.rawValue)")
                        },
                        destination: ActivitiesSelectView(),
                        disableButton: .constant(testing)  // Disable if no goal is selected
                    )
                    .padding(.bottom)
                }
            }
        }
    }
}

#Preview {
    MainGoalSelectView()
}
