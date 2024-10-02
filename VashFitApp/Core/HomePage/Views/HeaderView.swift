//
//  HeaderView.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 02/10/2024.
//

import SwiftUI
import PhotosUI
struct HeaderView: View {
    @StateObject var vmPp = PhotoPickerModel()
    var body: some View {
        HStack {
         DateShowViewModel()
            
           // Photo Picker
            Spacer()
            ZStack {
                Circle()
                    .fill(.text)
                    .frame(width: 60, height: 60)
                Image("dexImage")
                    .resizable()
                    .frame(width: 25, height: 35)
                
            }
        }
//        .padding(.horizontal)
    }
}

#Preview {
    HeaderView()
}
