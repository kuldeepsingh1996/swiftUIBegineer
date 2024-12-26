//
//  GroupBootCamp.swift
//  SwiftFulThinking
//
//  Created by Philophobic on 19/12/24.
//

import SwiftUI

struct GroupBootCamp: View {
    var body: some View {
        VStack(spacing:50) {
            
            Text("Hello world")
            
            Group {
                Text("Hey How are you")
                Text("Hey I am fine")
            }
            .font(.subheadline)
            .foregroundStyle(.green)
        }
        .font(.title)
        .foregroundStyle(.red)
    }
}

#Preview {
    GroupBootCamp()
}
