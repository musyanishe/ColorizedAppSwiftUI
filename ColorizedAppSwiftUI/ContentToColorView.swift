//
//  ViewContent.swift
//  ColorizedAppSwiftUI
//
//  Created by Евгения Шевцова on 15.05.2022.
//

import SwiftUI

struct ContentToColorView: View {
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
   
    let size = CGSize(width: 350, height: 200)
    
    var body: some View {
        ZStack{
            Color.indigo
                .ignoresSafeArea()
            
            VStack{
                Color(
                    red: red / 255,
                    green: green / 255,
                    blue: blue,
                    opacity: 1.0
                )
                .cornerRadius(30)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(lineWidth: 4)
                )
                .foregroundColor(.green)
                .frame(size)
                
                VStack{
                SliderView(sliderViewValue: $red.animation(.default), color: .red)
                SliderView(sliderViewValue: $green.animation(.default), color: .green)
                    SliderView(sliderViewValue: $blue.animation(.default), color: .blue)
                }
                .background(Color(white: 1, opacity: 0.3))
                .cornerRadius(30)
                .padding()
                Spacer()
            }
            .padding()
        }
    }
}

struct ViewContent_Previews: PreviewProvider {
    static var previews: some View {
        ContentToColorView()
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
