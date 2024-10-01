//
//  ActivitiesSelectView.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 30/09/2024.
//
//
//  ActivitiesSelectView.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 30/09/2024.
//

import SwiftUI

struct ActivitiesSelectView: View {
    let activities = [
        "Running", "Cycling", "Swimming", "Yoga", "Gym",
        "Dancing", "Walking", "Hiking", "Football", "Basketball",
        "Tennis", "Skating", "Pilates", "Rowing"
    ]
    
    // State to track selected activities
    @State private var selectedActivities = Set<String>()  // Using Set to avoid duplicates
    @Environment(\.colorScheme) private var colorScheme
    var body: some View {
        ZStack {
            Color.backGroundMain
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text("Which activities do you")
                    .font(.custom("Kameron", size: 28))
                    .foregroundStyle(.text)
                Text("engage in regularly?")
                    .font(.custom("Kameron", size: 30))
                    .foregroundStyle(.text)
                // Using a ScrollView and LazyVGrid for a responsive layout
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 20) {
                    ForEach(activities, id: \.self) { activity in
                        ActivityButton(activity: activity, isSelected: selectedActivities.contains(activity))
                            .onTapGesture {
                                // Toggle selection
                                if selectedActivities.contains(activity) {
                                    selectedActivities.remove(activity)
                                } else {
                                    selectedActivities.insert(activity)
                                }
                            }
                    }
                }
                Spacer()
                if selectedActivities.isEmpty {
                    ButtonStyleView(buttonWidth: 200, buttonHeight: 40, backGround: .secondary, textColor: .white, cornerRadius: 10, text: "Next", action: {}, destination: WaterDrinkSelectView(), disableButton: .constant(false))
                        .padding(.top)
                } else {
                    ButtonStyleView(buttonWidth: 200, buttonHeight: 40, backGround: .button, textColor: .white, cornerRadius: 10, text: "Next", action: {}, destination: WaterDrinkSelectView(), disableButton: .constant(true))
                        .padding(.top)
                }
            }
            .padding()
        }
    }
    // A reusable ActivityButton view that shows selected/unselected states
    struct ActivityButton: View {
        var activity: String
        var isSelected: Bool
        @Environment(\.colorScheme) private var colorScheme
        var body: some View {
            if colorScheme == .dark {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(isSelected ? .green: .backGroundSecond)
                    Text(activity)
                        .padding()
                        .font(.custom("Kameron", size: 14))
                        .multilineTextAlignment(.center)
                        .foregroundColor(isSelected ? .black : .white)
                }
                .scaleEffect(isSelected ? 1.02 : 1)  // Slightly enlarge selected items
                .animation(.spring(), value: isSelected)
            } else {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(isSelected ? .blue: .backGroundSecond)
                    Text(activity)
                        .padding()
                        .font(.custom("Kameron", size: 14))
                        .multilineTextAlignment(.center)
                        .foregroundColor(isSelected ? .white : .black)
                }
                .scaleEffect(isSelected ? 1.02 : 1)  // Slightly enlarge selected items
                .animation(.spring(), value: isSelected)
            }
        }
    }
}
#Preview {
    ActivitiesSelectView()
}







