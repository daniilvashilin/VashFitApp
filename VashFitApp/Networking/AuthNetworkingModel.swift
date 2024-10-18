//
//  AuthNetworkingModel.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 09/10/2024.
//

import Foundation
import FirebaseAuth
import FirebaseCore


class Login: ObservableObject {
    var email: String
    var password: String
    
    init(email: String = "", password: String = "") {
        self.email = email
        self.password = password
    }
    
    // Метод для создания пользователя
    func createUser() {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print("Ошибка при создании пользователя: \(error.localizedDescription)")
            } else {
                print("Пользователь успешно создан: \(authResult?.user.uid ?? "Нет UID")")
            }
        }
    }
    
    func signIn() {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print("Ошибка при входе пользователя: \(error.localizedDescription)")
            } else {
                print("Пользователь успешно зашёл: \(authResult?.user.uid ?? "Нет UID")")
            }
        }
    }
}
