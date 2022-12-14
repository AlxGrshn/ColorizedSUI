//
//  ColorView.swift
//  ColorizedSUI
//
//  Created by Alexander Grishin on 13.12.2022.
//


import SwiftUI

struct ColorView: View {
    let redValue: Double
    let greenValue: Double
    let blueValue: Double
    
    var body: some View {
        Color(
            red: redValue / 255,
            green: greenValue / 255,
            blue: blueValue / 255
        )
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.white, lineWidth: 4)
        )
        .frame(height: 150)
    }
}
