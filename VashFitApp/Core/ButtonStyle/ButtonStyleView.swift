//
//  ButtonStyleView.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 25/09/2024.
//

import SwiftUI

struct ButtonStyleView<Destination: View>: View {
    @State var buttonWidth: Double
    @State var buttonHeight: Double
    @State var backGround: Color
    @State var textColor: Color
    @State var cornerRadius: Double
    @State var text: String
    var action: () -> Void
    var destination: Destination
    @Binding var disableButton: Bool
    
    @State private var isNavigating: Bool = false
    var body: some View {
        Button {
            action()
            isNavigating = true
        } label: {
            Text(text)
                .frame(width: buttonWidth, height: buttonHeight)
                .background(backGround)
                .foregroundColor(textColor)
                .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                .font(.custom("Kameron", size: 18))
        }
        .disabled(disableButton == false)
        NavigationLink(destination: destination, isActive: $isNavigating) {
            EmptyView()
        }
    }
}

#Preview {
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
        destination: GenderSelectView(), disableButton: .constant(false)  // Make sure GenderSelectView exists
    )
}
