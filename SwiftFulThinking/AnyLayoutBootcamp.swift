//
//  AnyLayoutBootcamp.swift
//  SwiftFulThinking
//
//  Created by Philophobic on 19/12/24.
//

import SwiftUI

struct AnyLayoutBootcamp: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
        
        VStack(spacing:20) {
            Text("verticalSizeClass : \(verticalSizeClass.debugDescription)")
            Text("horizontalSizeClass : \(horizontalSizeClass.debugDescription)")
            
            let layout : AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gama")
            }
        }
    }
}

#Preview {
    AnyLayoutBootcamp()
}
