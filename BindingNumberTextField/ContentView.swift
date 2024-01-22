//
//  ContentView.swift
//  BindingNumberTextField
//
//  Created by MsMacM on 2024/01/22.
//

import SwiftUI

struct ContentView: View {
    @State var kingaku: String = ""
    @State var ninzu: String = ""
    
    var body: some View {
        VStack {
            NumberTextField(title: "金額", number: $kingaku)
            NumberTextField(title: "人数", number: $ninzu)
        }
//        .padding()
    }
}

#Preview {
    ContentView()
}
