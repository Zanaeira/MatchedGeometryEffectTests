//
//  ContentView.swift
//  MatchedGeometryEffectTests
//
//  Created by Suhayl Ahmed on 05/03/2023.
//

import SwiftUI

struct ContentView: View {
    @Namespace var namespace
    @State var showDetailView = false
    var body: some View {
        ZStack {
            if !showDetailView {
                Card()
                    .background(.red)
                    .cornerRadius(20)
                    .matchedGeometryEffect(id: "card", in: namespace)
            } else {
                Detail()
                    .background(.red)
                    .matchedGeometryEffect(id: "card", in: namespace)
            }
        }
        .onTapGesture { withAnimation { showDetailView.toggle() } }
    }
}

struct Card: View {
    var body: some View {
        VStack {}
            .frame(width: 300, height: 150)
    }
}

struct Detail: View {
    var body: some View {
        VStack {}
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
