//
//  TestSec.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 06/10/2024.
//

import SwiftUI

struct TestSec: View {
    @StateObject private var vm = UsersStorageModel()
    var body: some View {
        VStack {
            ForEach(Array(vm.storage.keys), id: \.self) { key in
                if let data = vm.storage[key] {
                    Text("Name: \(data.name ?? "Unknown"), Age: \(Int(data.age ?? 0))")
                }
            }
        }
    }
}

#Preview {
    TestSec()
}
