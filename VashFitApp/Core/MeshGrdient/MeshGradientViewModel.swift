//
//  MeshGradientViewModel.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 02/10/2024.
//

import SwiftUI

struct MeshGradientViewModel: View {
    var body: some View {
        ZStack {
            MeshGradient(colors: [.blue, .green, .yellow])
                        .ignoresSafeArea()
        }
    }
}

#Preview {
    MeshGradientViewModel()
}
