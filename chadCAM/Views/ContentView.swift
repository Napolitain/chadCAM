//
//  ContentView.swift
//  chadCAM
//
//  Created by Maxime Boucher on 15/12/2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        NavigationView {
            VStack {
                if let image = vm.image {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(minWidth: 0, maxWidth: .infinity)
                } else {
                    Image(systemName: "photo.fill")
                        .resizable()
                        .scaledToFit()
                        .opacity(0.6)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.horizontal)
                }
                HStack {
                    Button {
                        vm.source = .camera
                        vm.showPicker = true
                    } label: {
                        Text("Camera")
                    }
                    Button {
                        vm.source = .library
                        vm.showPicker = true
                    } label: {
                        Text("Photos")
                    }
                }
                Spacer()
            }
            .sheet(isPresented: $vm.showPicker) {
                
            }
            .navigationTitle("My images")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
    }
}
