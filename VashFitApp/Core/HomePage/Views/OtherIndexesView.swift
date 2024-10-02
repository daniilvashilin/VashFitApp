//
//  OtherIndexesView.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 02/10/2024.
//

import SwiftUI

struct OtherIndexesView: View {
    var body: some View {
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.backGroundSecond)
                    .frame(width: 100, height: 100)
                Spacer()
                RoundedRectangle(cornerRadius: 10)
                    .fill(.backGroundSecond)
                    .frame(width: 100, height: 100)
                Spacer()
                RoundedRectangle(cornerRadius: 10)
                    .fill(.backGroundSecond)
                    .frame(width: 100, height: 100)
            }
    }
}

#Preview {
    OtherIndexesView()
}


