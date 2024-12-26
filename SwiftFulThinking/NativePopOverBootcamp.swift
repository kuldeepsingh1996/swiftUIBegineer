//
//  NativePopOverBootcamp.swift
//  SwiftFulThinking
//
//  Created by Philophobic on 19/12/24.
//

import SwiftUI

struct NativePopOverBootcamp: View {
    
    @State private var showPopOver = false
    @State private var feedbackOption = [
        "Very Good",
        "Average",
        "Very Bad"
    ]
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            Button("Click Me") {
                showPopOver.toggle()
            }
            .padding(20)
            .background(Color.yellow)
            .popover(isPresented: $showPopOver,attachmentAnchor: .point(.top)){
                ScrollView {
                    VStack(alignment: .leading,spacing: 12) {
                        ForEach(feedbackOption,id: \.self) { options in
                            Button(options) {
                                
                            }
                            if options != feedbackOption.last {
                                Divider()
                            }
                        }
                    }
                    .padding(20)
                    .presentationCompactAdaptation(.popover)

                }

            }
        }
        
    }
}

#Preview {
    NativePopOverBootcamp()
}
