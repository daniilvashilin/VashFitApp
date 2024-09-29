//
//  WelcomePageView.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 25/09/2024.
//

import SwiftUI

struct WelcomePageView: View {
    var body: some View {
        ZStack {
            Color.backGroundMain
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text("Welcome")
                    .font(.custom("Kameron", size: 40))
                Text("to")
                    .font(.custom("Kameron", size: 30))
                Text("VashFit")
                    .font(.custom("Kameron", size: 50))
                Text("Don’t wait")
                    .font(.custom("Kameron", size: 50))
                Text("Begin Today")
                    .font(.custom("Kameron", size: 35))
                Spacer()
                ButtonStyleView(
                      buttonWidth: 200,
                      buttonHeight: 40,
                      backGround: .blue,    // Ensure correct color
                      textColor: .white,
                      cornerRadius: 15,
                      text: "Next",
                      action: {
                          // Test action
                          print("Button tapped")
                      },
                      destination: GenderSelectView(), disableButton: .constant(true)  // Make sure GenderSelectView exists
                  )
                .padding(.bottom)
            }
            .foregroundColor(.text)
        }
    }
}

#Preview {
    WelcomePageView()
}
