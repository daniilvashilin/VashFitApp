//
//  WaterDrinkSelectModel.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 02/10/2024.
//

import Foundation
import SwiftUI

struct CustomWaterDrinkSelect: View {
    let textValue: String
    let isSelected: Bool
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(isSelected ? Color.button : Color.clear)
                .frame(width: 360, height: 90)
            RoundedRectangle(cornerRadius: 10)
                .fill(.backGroundSecond)
                .frame(width: 350, height: 80)
            HStack {
                Text(textValue + "L")
                    .foregroundStyle(.text)
                    .font(.custom("Kameron", size: 28))
            }
            .frame(width: 300, height: 90)
        }
    }
}
