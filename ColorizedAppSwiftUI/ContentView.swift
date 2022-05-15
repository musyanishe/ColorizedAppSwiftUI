//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Евгения Шевцова on 15.05.2022.
//

import SwiftUI

struct ContentView: View {
    

    var body: some View {
        ZStack{
                Color.indigo
                    .ignoresSafeArea()
            VStack{
//                ContentToColorView(viewColor: Color(red: <#T##Double#>, green: <#T##Double#>, blue: <#T##Double#>))
                SliderView(sliderColor: .red)
                SliderView(sliderColor: .green)
                SliderView(sliderColor: .blue)
                .padding()
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
