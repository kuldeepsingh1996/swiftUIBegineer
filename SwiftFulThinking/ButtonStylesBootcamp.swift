//
//  ButtonStylesBootcamp.swift
//  SwiftFulThinking
//
//  Created by Philophobic on 19/12/24.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        
        VStack {
            Button("Button Title") {
                
            }
            .frame(height:55)
            .frame(maxWidth:.infinity)
            .controlSize(.large)
            .buttonStyle(BorderedButtonStyle())
            
            
            Button("Button Title") {
                
            }
            .frame(height:55)
            .frame(maxWidth:.infinity)
            .buttonBorderShape(.capsule)
            .buttonStyle(BorderedProminentButtonStyle())
            
            Button("Button Title") {
                
            }
            .frame(height:55)
            .frame(maxWidth:.infinity)
            .buttonStyle(DefaultButtonStyle())
        }
        .padding()
    }
}

#Preview {
    ButtonStylesBootcamp()
}
