//
//  RegisterView.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 01/10/2024.
//

import SwiftUI

struct RegisterView: View {
    @State private var password = ""
    @State private var email = ""
    @StateObject var vm = IconCategoryViewModel()
    var body: some View {
        ZStack {
            Color.backGroundMain
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Register")
                    .font(.custom("Kameron", size: 28))
                    .foregroundStyle(.text)
                    .padding()
                TextField("Email", text: $email)
                    .padding()
                    .font(.custom("Kameron", size: 18))
                    .frame(width: 250, height: 50)
                    .background(.backGroundSecond)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                SecureField("Password", text: $password)
                    .padding()
                    .font(.custom("Kameron", size: 18))
                    .frame(width: 250, height: 50)
                    .background(.backGroundSecond)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                SecureField("Password", text: $password)
                    .padding()
                    .font(.custom("Kameron", size: 18))
                    .frame(width: 250, height: 50)
                    .background(.backGroundSecond)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Button {
                    // Action register
                } label: {
                    Text("Register")
                        .padding()
                        .font(.custom("Kameron", size: 18))
                        .foregroundStyle(.text)
                        .frame(width: 200, height: 40)
                        .background(.button)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding()
                // Social media Login ***
                HStack(spacing: 20) {
                    ForEach(vm.categories, id: \.self) {icon in
                        
                        NavigationLink {
                            icon.destinationView
                        } label: {
                            Image(icon.rawValue)
                                .padding()
                                .background(.backGroundSecond)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                        
                    }
                }
            }
        }
    }
}

#Preview {
    RegisterView()
}
