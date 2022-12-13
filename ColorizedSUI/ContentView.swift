//
//  ContentView.swift
//  ColorizedSUI
//
//  Created by Alexander Grishin on 13.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    
    var body: some View {
        ZStack {
            Color(.gray).ignoresSafeArea()
            VStack(spacing: 20) {
                ColorView(
                    redValue: redValue,
                    greenValue: greenValue,
                    blueValue: blueValue
                )
                VStack {
                    ColorizedView(value: $redValue) .tint(.red)
                    ColorizedView(value: $greenValue) .tint(.green)
                    ColorizedView(value: $blueValue) .tint(.blue)
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
