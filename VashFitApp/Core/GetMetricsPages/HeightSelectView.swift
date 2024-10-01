//
//  HeightSelectView.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 26/09/2024.
//

import SwiftUI

struct HeightSelectView: View {
    @State private var selectHeight: Double = 168
    var body: some View {
        ZStack {
            Color.backGroundMain
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("What is your Height?")
                    .font(.custom("Kameron", size: 28))
                    .foregroundStyle(.text)
                    .padding(.bottom)
                
                CustomPickerView(selection: $selectHeight, data: stride(from: 132.0, to: 240.0, by: 0.5).map { $0 }, isAgeSelectingView: .constant(false), isWidthSelectingView: .constant(false), isHeightSelectingView: .constant(true), colorPickerSelect: .brown)
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
                      destination: BodyTypeSelectView(), disableButton: .constant(true)  // Make sure GenderSelectView exists
                  )
            }
        }
    }
}

#Preview {
    HeightSelectView()
}
