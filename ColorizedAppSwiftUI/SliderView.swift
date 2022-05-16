//
//  SliderView.swift
//  ColorizedAppSwiftUI
//
//  Created by Евгения Шевцова on 16.05.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var sliderViewValue: Double
    @State private var labelValue = ""
    
    let color: Color
    
    var body: some View {
        HStack(spacing: 20){
            Text("\(lround(sliderViewValue))")
                .font(.system(size: 20, weight: .medium, design: .default))
            Slider(value: $sliderViewValue, in: 0...255, step: 1)
                .accentColor(color)
                .onChange(of: sliderViewValue) { value in
                    labelValue = "\(lround(sliderViewValue))"}
            TextFieldView(textValue: $labelValue, numberValue: $sliderViewValue)
        }
        .onAppear(perform: {
            labelValue = "\(lround(sliderViewValue))"
        })
        .padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderViewValue: .constant(100), color: .red)
    }
}
