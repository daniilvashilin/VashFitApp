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
                HStack {
                    ZStack {
                        Circle()
                            .fill(.button.opacity(0.8))
                            .stroke(.text, lineWidth: 1)
                            .frame(width: 100, height: 100)
                        Image("whiteApple")
                            .resizable()
                            .frame(width: 60, height: 60)
                    }
                    ZStack {
                        Circle()
                            .fill(.button.opacity(0.8))
                            .stroke(.secondary, lineWidth: 1)
                            .frame(width: 50, height: 50)
                        Image("whiteApple")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    ZStack {
                        Circle()
                            .fill(.button.opacity(0.8))
                            .stroke(.secondary, lineWidth: 1)
                            .frame(width: 30, height: 30)
                        Image("whiteApple")
                            .resizable()
                            .frame(width: 15, height: 15)
                    }
                }
                Text("Hey! Welcome")
                    .font(.custom("Kameron", size: 30))
                    .padding(.top)
                Text("Your journey to a healthier")
                    .font(.custom("Kameron", size: 15))
                    .foregroundStyle(.secondary)
                Text("fitter, and more balanced life starts here")
                    .font(.custom("Kameron", size: 15))
                    .foregroundStyle(.secondary)
                    .padding(.bottom)
                ButtonStyleView(
                    buttonWidth: 300,
                    buttonHeight: 50,
                    backGround: .button,
                    textColor: .white,
                    cornerRadius: 10,
                    text: "Get started",
                    action: {
                        // Test action
                        print("Button tapped")
                    },
                    destination: GenderSelectView(), disableButton: .constant(true)
                )
                .padding(0.1)
                ButtonStyleView(
                    buttonWidth: 300,
                    buttonHeight: 50,
                    backGround: .backGroundSecond,
                    textColor: .text,
                    cornerRadius: 10,
                    text: "Already have account",
                    action: {
                        // Test action
                        print("Button tapped")
                    },
                    destination: LoginView(), disableButton: .constant(true)
                )
                Spacer()
            }
            .foregroundColor(.text)
        }
    }
}

#Preview {
    WelcomePageView()
}
