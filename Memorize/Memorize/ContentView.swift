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
            CardView(isFaceUp: false)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}

struct CardView: View {
    @State var isFaceUp = true //@State makes this variable a pointer to isFaceUp
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("🤓")
                    .font(.largeTitle)
            } else {
                base.fill()
                Text("")
            }
        }
        .onTapGesture {
            print("tappe")
            isFaceUp.toggle()
        }
    }
}
