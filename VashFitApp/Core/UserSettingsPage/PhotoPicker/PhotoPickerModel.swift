//
//  PhotoPickerModel.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 02/10/2024.
//

import Foundation
import PhotosUI
import _PhotosUI_SwiftUI

class PhotoPickerModel: ObservableObject {
    @Published var selectedImage: UIImage? = nil
}
