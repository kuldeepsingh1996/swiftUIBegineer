//
//  ToolBarBootcamp.swift
//  SwiftFulThinking
//
//  Created by Philophobic on 19/12/24.
//

import SwiftUI

struct ToolBarBootcamp: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.gray
                    .ignoresSafeArea()
                
                
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                }
            }
        }

        
    }
}

#Preview {
    ToolBarBootcamp()
}
