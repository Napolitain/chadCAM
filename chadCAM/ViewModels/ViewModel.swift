//
//  ViewModel.swift
//  chadCAM
//
//  Created by Maxime Boucher on 15/12/2021.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var image: UIImage?
    @Published var showPicker = false
    @Published var source: Picker.Source = .library
}
