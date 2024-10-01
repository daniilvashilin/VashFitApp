//
//  MetricsAllSetView.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 01/10/2024.
//

import SwiftUI

struct MetricsAllSetView: View {
    var body: some View {
        ZStack {
            Color.backGroundMain
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("allSetImage")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding()
                Text("All set")
                    .font(.custom("Kameron", size: 30))
                    .foregroundStyle(.text)
                    .padding()
                Text("Just few steps and we ready to go")
                    .font(.custom("Kameron", size: 15))
                    .foregroundStyle(.secondary)
                Text("You need to register or sign in")
                    .font(.custom("Kameron", size: 15))
                    .foregroundStyle(.secondary)
                    .padding(.bottom)
                NavigationLink {
                    LoginView()
                } label: {
                    Text("I am new here")
                        .padding()
                        .foregroundStyle(.white)
                        .font(.custom("Kameron", size: 16))
                        .frame(width: 250, height: 46)
                        .background(.button)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding(3)
                NavigationLink {
                    RegisterView()
                } label: {
                    Text("Already have account")
                        .padding()
                        .foregroundStyle(.text)
                        .font(.custom("Kameron", size: 16))
                        .frame(width: 250, height: 46)
                        .background(.backGroundSecond)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }

                
            }
        }
    }
}

#Preview {
    MetricsAllSetView()
}
