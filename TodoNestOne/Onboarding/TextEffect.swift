//
//  TextEffect.swift
//  TodoNestOne
//
//  Created by Peyman Osatian on 2024-08-24.
//

import SwiftUI

struct TextEffect: View {
    let text : String
    @State private var displaycharacter = ""
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    var body: some View {
        Text(displaycharacter)
            .font(Font.custom("Merriweather-Regular", size: 32))
            .onReceive(timer){ _ in
                if displaycharacter.count < text.count{
                    let index = text.index(text.startIndex, offsetBy: displaycharacter.count)
                    displaycharacter.append(text[index])
                }
                
                
            }
    }
}

#Preview {
    TextEffect(text: "")
}
