//
//  SafeAreaInsetBootcamp.swift
//  SwiftFulThinking
//
//  Created by Philophobic on 19/12/24.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height:300)
            }
            .navigationTitle("Safe Area Insets")
            .safeAreaInset(edge: .bottom) {
                Text("Hi")
                    .foregroundStyle(.blue)
                    .frame(maxWidth:.infinity)
                    .background(Color.yellow)
            }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
