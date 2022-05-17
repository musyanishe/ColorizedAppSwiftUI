//
//  TextFieldView.swift
//  ColorizedAppSwiftUI
//
//  Created by Евгения Шевцова on 16.05.2022.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var textValue: String
    @Binding var numberValue: Double
    
    @State private var alertPresented = false
    
    var body: some View {
        TextField("", text: $textValue) { checkUserValue() }
        .font(.system(size: 20, weight: .medium, design: .default))
        .frame(width: 55, alignment: .trailing)
        .multilineTextAlignment(.trailing)
        .textFieldStyle(RoundedBorderTextFieldStyle())
            .alert(isPresented: $alertPresented) {
                Alert(title: Text("Wrong Format"),
                      message: Text("Enter a number in range from 0 to 255"))
            }
            
    }
    
    private func checkUserValue() {
        if let numberValue = Int(textValue),
           (0...255).contains(numberValue) {
            self.numberValue = Double(numberValue)
        } else {
            alertPresented.toggle()
            numberValue = 0
            textValue = "0"
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(textValue: .constant("100"), numberValue: .constant(100))
    }
}
