//
//  ContentView.swift
//  Memorize
//
//  Created by Loyd Hook on 7/5/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        HStack {
            VStack {
                CardView(isFaceUp: true)
                CardView()
            }
            VStack {
                CardView(isFaceUp: true)
                CardView(isFaceUp: false)
            }
        }
        
    }
}

#Preview {
    ContentView()
}

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack (content: {
            
            
            if isFaceUp {
                RoundedRectangle(cornerRadius: 23).foregroundColor(.white)
                Text("🤓")
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 23).foregroundColor(.orange)
                Text("")
            }
            RoundedRectangle(cornerRadius: 23)
                .strokeBorder(lineWidth: 10)
        })
        .foregroundColor(.orange)
        .padding()
        .imageScale(.small)
    }
}
