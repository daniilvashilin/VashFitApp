//
//  GetUserDataViewModel.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 05/10/2024.
//

import SwiftUI

struct GetUserDataViewModel: View {
    // Передай инициализированный объект UserParametersModel
    @ObservedObject var vm: UserParametersModel
    @State var name: String = ""

    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                vm.name = name // Обновление данных в модели
                print("The name: \(name)") // Для проверки вывода в консоль
            }, label: {
                Text("Send")
            })
            .padding()
        }
    }
}

#Preview {
    // Передаем инициализированный объект для работы
    GetUserDataViewModel(vm: UserParametersModel())
}
