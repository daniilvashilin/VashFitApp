//
//  WightSelectVIew.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 26/09/2024.
//

import SwiftUI

struct WightSelectVIew: View {
    @State var isWidthSelector: Bool = false
    @State private var selectedWight: Double = 68
    
    var body: some View {
        ZStack {
            Color.backGroundMain
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("What is your age?")
                    .font(.custom("Kameron", size: 30))
                    .foregroundStyle(.text)
                    .padding(.bottom)
                
                CustomPickerView(selection: $selectedWight, data: stride(from: 30.0, to: 150.0, by: 0.5).map { $0 }, isAgeSelectingView: .constant(false), isWidthSelectingView: .constant(true), isHeightSelectingView: .constant(false), colorPickerSelect: .purple)
                    .padding()
                
                // Button active
                ButtonStyleView(
                      buttonWidth: 200,
                      buttonHeight: 40,
                      backGround: .button,    // Ensure correct color
                      textColor: .white,
                      cornerRadius: 15,
                      text: "Next",
                      action: {
                          // Test action
                          print("Button tapped")
                      },
                      destination: HeightSelectView(), disableButton: .constant(true)  // Make sure GenderSelectView exists
                  )
            }
        }
    }
}

#Preview {
    WightSelectVIew()
}
