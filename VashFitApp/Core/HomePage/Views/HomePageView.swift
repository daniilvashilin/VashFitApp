//
//  ContentView.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 25/09/2024.
//

import SwiftUI

struct HomePageView: View {
    
    var body: some View {
        ZStack {
            Color.backGroundMain
                .edgesIgnoringSafeArea(.all)
            VStack {
                HeaderView()
                HStack {
                    Text("Calories consumed:")
                        .font(.custom("Montserrat", size: 18))
                        .foregroundStyle(.text)
                    Spacer()
                }
                .padding(.bottom)
                HStack {
                    Text("2232/2450 Kcal")
                        .font(.custom("Montserrat", size: 38))
                        .foregroundStyle(.text)
                    Spacer()
                }
                CaloriesIndexView()
                    .padding(.vertical)
                OtherIndexesView()
                Spacer()
            }
            .padding()
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    HomePageView()
}
