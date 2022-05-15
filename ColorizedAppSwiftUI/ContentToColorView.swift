//
//  ViewContent.swift
//  ColorizedAppSwiftUI
//
//  Created by Евгения Шевцова on 15.05.2022.
//

import SwiftUI

struct ContentToColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    let size = CGSize(width: 350, height: 200)
    
    var body: some View {
        Color(
            red: red / 255,
            green: green / 255,
            blue: blue / 255
        )
        .cornerRadius(30)
        .overlay(
        RoundedRectangle(cornerRadius: 30)
            .stroke(lineWidth: 4)
            )
        .foregroundColor(.green)
        .frame(size)
    }
}

struct ViewContent_Previews: PreviewProvider {
    static var previews: some View {
        ContentToColorView(red: 150, green: 150, blue: 150)
    }
}

struct FrameFromSize: ViewModifier {
    let size: CGSize
    
    func body(content: Content) -> some View {
        content
            .frame(width: size.width, height: size.height)
    }
}

extension View {
    func frame(_ size: CGSize) -> some View {
        modifier(FrameFromSize(size: size))
    }
}
