//
//  ResizeableSheets.swift
//  SwiftFulThinking
//
//  Created by Philophobic on 19/12/24.
//

import SwiftUI

struct ResizeableSheets: View {
    
    @State private var showSheets : Bool = false
    
    var body: some View {
        Button("Click Me") {
            showSheets.toggle()
        }
        .sheet(isPresented: $showSheets) {
            NextScreen()
               // .presentationDetents([.medium])
                //.presentationDetents([.fraction(0.3)])
                .presentationDetents([.height(400)])
                .presentationDragIndicator(.hidden)
               // .interactiveDismissDisabled()
        }
    }
    
}

struct NextScreen : View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Text("Hello world")
        }
        
    }
}

#Preview {
    ResizeableSheets()
}
