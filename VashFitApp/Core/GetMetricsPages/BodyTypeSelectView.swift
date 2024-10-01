//
//  BodyTypeSelectView.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 27/09/2024.
//

import SwiftUI

struct BodyTypeSelectView: View {
    let columns = [
        GridItem(.flexible()),  // First column
        GridItem(.flexible())   // Second column
    ]
    @State private var selectedBodyType: Body? = nil
    @State private var buttonAccept = false
    var body: some View {
        ZStack {
            Color.backGroundMain
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("How would you ")
                    .font(.custom("Kameron", size: 28))
                    .foregroundStyle(.text)
                    .padding(.top)
                Text("describe your body type?")
                    .font(.custom("Kameron", size: 28))
                    .foregroundStyle(.text)
                
                ScrollView {
                    LazyVGrid(columns: columns, content: {
                        ForEach(BodyTypeItems) { item in
                            Button(action: {
                                selectedBodyType = item
                                buttonAccept = true
                            }, label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(selectedBodyType == item ? Color.button : Color.clear)
                                        .frame(width: 160, height: 160)
                                    VStack {
                                        Image(systemName: item.icon)
                                            .foregroundStyle(.text)
                                            .padding(1)
                                        Text(item.title)
                                            .foregroundStyle(.text)
                                    }
                                    .frame(width: 150, height: 150)
                                    .background(.backGroundSecond)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                    .padding()
                                }
                                
                            })
                            
                            
                        }
                    })
                }
                
                if buttonAccept == true {
                    ButtonStyleView(buttonWidth: 200, buttonHeight: 40, backGround: .button, textColor: .white, cornerRadius: 10, text: "Next", action: {
                        print("Test")
                    }, destination: MainGoalSelectView(), disableButton: .constant(buttonAccept))
                    .padding(.bottom)
                } else {
                    ButtonStyleView(buttonWidth: 200, buttonHeight: 40, backGround: .secondary, textColor: .white, cornerRadius: 10, text: "Next", action: {
                        print("Test")
                    }, destination: MainGoalSelectView(), disableButton: .constant(buttonAccept))
                    .padding(.bottom)
                }
            }
        }
    }
}

#Preview {
    BodyTypeSelectView()
}
