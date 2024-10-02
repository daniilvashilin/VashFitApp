//
//  DateShowViewModel.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 02/10/2024.
//

import SwiftUI

struct DateShowViewModel: View {
    var body: some View {
        Text(Date.now, format: .dateTime.weekday(.abbreviated).day().month(.abbreviated).year())
            .font(.custom("Montserrat", size: 28))
            .foregroundStyle(.text)
    }
}

#Preview {
    DateShowViewModel()
}
