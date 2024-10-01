//
//  WaterDrinkSelectView.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 30/09/2024.
//

import SwiftUI

struct WaterDrinkSelectView: View {
    @State private var selectedWater: String? = nil
    var body: some View {
        ZStack {
            let options = ["0-1", "1-2", "2+"]
            Color.backGroundMain
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Text("How much water do you")
                    .font(.custom("Kameron", size: 28))
                    .foregroundStyle(.text)
                Text("usually drink")
                    .font(.custom("Kameron", size: 28))
                    .foregroundStyle(.text)
                Text("during the day?")
                    .font(.custom("Kameron", size: 28))
                    .foregroundStyle(.text)
                Spacer()
                ForEach(options, id: \.self) {option in
                    
                    Button(action: {
                        selectedWater = option
                        //                        print(option)
                    }, label: {
                        CustomWaterDrinkSelect(textValue: option, isSelected: selectedWater == option)
                    })
                }
                Spacer()
                // Button Next ***
                if selectedWater == nil {
                    ButtonStyleView(buttonWidth: 200, buttonHeight: 40, backGround: .secondary, textColor: .white, cornerRadius: 10, text: "Next", action: {}, destination: MetricsAllSetView(), disableButton: .constant(false))
                        .padding(.top)
                } else {
                    ButtonStyleView(buttonWidth: 200, buttonHeight: 40, backGround: .button, textColor: .white, cornerRadius: 10, text: "Next", action: {}, destination: MetricsAllSetView(), disableButton: .constant(true))
                        .padding(.top)
                }
            }
        }
    }
}
#Preview {
    WaterDrinkSelectView()
}



