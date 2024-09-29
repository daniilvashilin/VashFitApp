//
//  AgeSelectView.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 25/09/2024.
//

import SwiftUI

struct AgeSelectView: View {
    @State var isAgeSelector: Bool = false
    @State private var selectedAge: Double = 18
    
    var body: some View {
        ZStack {
            Color.backGroundMain
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("What is your age?")
                    .font(.custom("Kameron", size: 30))
                    .foregroundStyle(.text)
                    .padding(.bottom)
                
                CustomPickerView(selection: $selectedAge, data: stride(from: 3.0, to: 150.0, by: 1).map { $0 }, isAgeSelectingView: .constant(true), isWidthSelectingView: .constant(false), isHeightSelectingView: .constant(false), colorPickerSelect: .green)
                    .padding()
                
                // Button active
                ButtonStyleView(
                      buttonWidth: 200,
                      buttonHeight: 40,
                      backGround: .button,
                      textColor: .white,
                      cornerRadius: 15,
                      text: "Next",
                      action: {
                          // Test action
                          print("Button tapped")
                      },
                      destination: WightSelectVIew(), disableButton: .constant(true)  // Make sure GenderSelectView exists
                  )
            }
        }
    }
}

#Preview {
    AgeSelectView()
}
