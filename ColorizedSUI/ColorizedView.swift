//
//  ColorizedView.swift
//  ColorizedSUI
//
//  Created by Alexander Grishin on 13.12.2022.
//


import SwiftUI

struct ColorizedView: View {
    @Binding var value: Double
    @State var textValue = ""

    var body: some View {
        HStack {
            TextView(value: value)
            SliderView(value: $value)
                .onChange(of: value) { _ in
                    textValue = "\(value)"
                }
        }
    }
}

