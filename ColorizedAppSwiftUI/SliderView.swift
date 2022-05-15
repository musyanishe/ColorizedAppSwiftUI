//
//  SliderView.swift
//  ColorizedAppSwiftUI
//
//  Created by Евгения Шевцова on 15.05.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var sliderValue: Double
    @State private var userValue = ""
    @State private var alertPresented = false
    let sliderColor: Color
    
    var body: some View {
            HStack(spacing: 16){
//            ValueOfSlider(sliderValue: sliderValue)
                Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(sliderColor)
//            TextField("", text: $userValue)
//                .font(.title)
//                .overlay(RoundedRectangle(cornerRadius: 10)
//                    .stroke(lineWidth: 2)
//                    .foregroundColor(.black))
//                .padding(.horizontal)
//                .padding()
        }
            .padding(.horizontal)
//            Button("Done") { checkUserValue() }
//                .alert(isPresented: $alertPresented) {
//                    Alert(title: Text("Wrong Format!"), message: Text("Enter a number"))
//                }
    
    }
}

//    private func checkUserValue() {
//        if let _ = Float(userValue) {
//            userValue = ""
//            alertPresented.toggle()
//            return
//        }
//
//    }
//}
//
//struct SliderView_Previews: PreviewProvider {
//    static var previews: some View {
////        SliderView(sliderValue: <#T##Double#>, sliderColor: <#T##Color#>)
//    }
//}

//struct ColorSlider: View {
//    @Binding var value: Double
//
//    var body: some View {
//        Slider(value: $value, in: 0...255, step: 1)
//    }
//}
//
//struct ValueOfSlider: View {
//    let sliderValue: Double
//
//    var body: some View {
//        Text("\(lround(sliderValue))")
//            .font(.title)
//    }
//}
