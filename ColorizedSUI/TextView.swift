//
//  TextView.swift
//  ColorizedSUI
//
//  Created by Alexander Grishin on 13.12.2022.
//

import SwiftUI

struct TextView: View {
    let value: Double
       
       var body: some View {
           Text("\(lround(value))")
               .foregroundColor(.white)
               .frame(width: 35, alignment: .leading)
       }
}
