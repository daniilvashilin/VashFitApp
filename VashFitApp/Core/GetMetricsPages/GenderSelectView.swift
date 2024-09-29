//
//  GenderSelectView.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 25/09/2024.
//

import SwiftUI

struct GenderSelectView: View {
    enum GenderSelect {
        case male
        case female
        case none
    }
    @State private var selectedGender: GenderSelect = .none
    var body: some View {
        ZStack {
            Color(.backGroundMain)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("What is your gender ?")
                    .font(.custom("Kameron", size: 30))
                    .foregroundStyle(.text)
                    .padding()
                Spacer()
                HStack(spacing: 20) {
                    
                    // Male selected
                    
                    Button(action: {
                        selectedGender = .male
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(selectedGender == .female ? .male.opacity(0.5) : .male)
                                .frame(width: 150, height: 150)
                                .scaleEffect(CGSize(width: selectedGender == .male ? 1.1 : 1.0, height: selectedGender == .male ? 1.1 : 1.0))
                            Image(.maleIcon)
                        }
                    })
                    
                    // Female selected
                    
                    Button(action: {
                        selectedGender = .female
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(selectedGender == .male ? .female.opacity(0.5) : .female)
                                .frame(width: 150, height: 150)
                                .scaleEffect(CGSize(width: selectedGender == .female ? 1.1 : 1.0, height: selectedGender == .female ? 1.1 : 1.0))
                            
                            Image(.femaleIcon)
                        }
                    })
                }
                Spacer()
                
                if selectedGender == .none {
                    ButtonStyleView(buttonWidth: 200, buttonHeight: 40, backGround: .secondary, textColor: .white, cornerRadius: 10, text: "Next", action: {}, destination: AgeSelectView(), disableButton: .constant(false))
                        .padding(.bottom)
                } else {
                    ButtonStyleView(buttonWidth: 200, buttonHeight: 40, backGround: .button, textColor: .white, cornerRadius: 10, text: "Next", action: {}, destination: AgeSelectView(), disableButton: .constant(true))
                        .padding(.bottom)
                }
            }
        }
    }
}

#Preview {
    GenderSelectView()
}
