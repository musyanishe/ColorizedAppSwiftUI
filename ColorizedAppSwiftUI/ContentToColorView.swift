//
//  ViewContent.swift
//  ColorizedAppSwiftUI
//
//  Created by Евгения Шевцова on 15.05.2022.
//

import SwiftUI

struct ContentToColorView: View {
    let viewColor: Color
    let size = CGSize(width: 350, height: 200)
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .foregroundColor(viewColor)
            .frame(size)
            .padding()
//            .background(viewColor)
//            .cornerRadius(30)
            .padding()
    }
}

struct ViewContent_Previews: PreviewProvider {
    static var previews: some View {
        ContentToColorView(viewColor: .green)
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
