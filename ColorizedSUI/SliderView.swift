//
//  SliderView.swift
//  ColorizedSUI
//
//  Created by Alexander Grishin on 13.12.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    
    var body: some View {
        Slider(value: $value, in: 0...255, step: 1)
            .animation(.easeInOut, value: value)
    }
}
