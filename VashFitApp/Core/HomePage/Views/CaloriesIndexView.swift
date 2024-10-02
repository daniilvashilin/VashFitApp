//
//  CaloriesIndexView.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 02/10/2024.
//

import SwiftUI

struct CaloriesIndexView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(.backGroundSecond)
                .frame(width:360, height: 40)
            HStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.button)
                    .frame(width:300, height: 35)
                Spacer()
            }
            Text("91%")
        }
    }
}

#Preview {
    CaloriesIndexView()
}
