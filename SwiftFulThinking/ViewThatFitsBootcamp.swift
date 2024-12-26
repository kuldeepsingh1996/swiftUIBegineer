//
//  ViewThatFitsBootcamp.swift
//  SwiftFulThinking
//
//  Created by Philophobic on 19/12/24.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            ViewThatFits {
                Text("This is some that i would like to show to the user")
                Text("This is some that i would like to show")
                Text("This is some that i would like to show to the user")
            }
        }
        .frame(height: 300)
        .padding(30)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
