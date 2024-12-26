//
//  AnimationBootcamp.swift
//  SwiftFulThinking
//
//  Created by Philophobic on 19/12/24.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State private var animate1 = false
    @State private var animate2 = false

    var body: some View {
        
        ZStack {
            VStack(spacing:20) {
                Button("Action 1") {
                    animate1.toggle()
                }
                Button("Action 2") {
                    animate2.toggle()
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 100,height: 100)
                        .frame(maxWidth:.infinity,alignment: animate1 ? .leading : .trailing)
                        .background(Color.gray)
                        .frame(maxHeight:.infinity,alignment: animate2 ? .top : .bottom)

                }
                .frame(maxWidth:.infinity,maxHeight: .infinity)
                .background(Color.red)
            }
        }
        .animation(.spring(), value: animate1)
        .animation(.easeInOut(duration: 5), value: animate2)
        
    }
}

#Preview {
    AnimationBootcamp()
}
