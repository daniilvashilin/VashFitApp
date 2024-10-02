//
//  LoginView.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 01/10/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var password = ""
    @State private var email = ""
    @StateObject var vm = IconCategoryViewModel()
    var body: some View {
        ZStack {
            Color.backGroundMain
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Login")
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
                Button {
                    // Action
                } label: {
                    Text("Login")
                        .padding()
                        .foregroundStyle(.text)
                        .font(.custom("Kameron", size: 18))
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
    LoginView()
}



enum SocialMediaIcons: String, CaseIterable, Hashable {
    case apple = "appleIcon"
    case google = "facebookIcon"
    case faecbook = "googleIcon"
    
    var icon: Image {
        Image(rawValue)
    }
    
    var destinationView: some View {
        switch self {
        case .apple:
            HomePageView()  // Replace with your custom view
        case .google:
            HomePageView()  // Replace with your custom view
        case .faecbook:
            HomePageView()  // Replace with your custom view
        }
    }
    
    var title: String {
        switch self {
        case .apple:
            return "HomePageView"
        case .google:
            return "HomePageView"
        case .faecbook:
            return "HomePageView"
        }
    }
}

class IconCategoryViewModel: ObservableObject {
    @Published var categories: [SocialMediaIcons] = SocialMediaIcons.allCases
}
