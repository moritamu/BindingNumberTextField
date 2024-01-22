//
//  NumberTextField.swift
//  BindingNumberTextField
//
//  Created by MsMacM on 2024/01/22.
//

import SwiftUI

struct NumberTextField: View {
    var title: String
    
    @Binding var number: String
    
    var body: some View {
        HStack {
            Text(title + ":")
            TextField("0", text: $number)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numbersAndPunctuation)
            if numCheck(number) {
                Image(systemName: "checkmark")
                    .foregroundColor(.blue)
            } else {
                Image(systemName: "arrow.left")
                    .foregroundColor(.red)
            }
            
        }.frame(width: 150)
        
    }
    func numCheck(_ number: String) -> Bool {
        guard let num = Int(number) else {
            return false
        }
        return num > 0
    }
}

#Preview {
    NumberTextField(title: "テスト", number: .constant("123"))
}
