//
//  AsyncImageBootcamp.swift
//  SwiftFulThinking
//
//  Created by Philophobic on 19/12/24.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    var url = URL(string: "https://picsum.photos/400.jpg")
    
    var body: some View {
        AsyncImage(url: url) { returnedImage in
            returnedImage
                .resizable()
                .scaledToFit()
                .clipShape(.rect(cornerRadius: 20))
        } placeholder: {
            ProgressView()
        }
        .frame(width: 100,height: 100)

    }
}

#Preview {
    AsyncImageBootcamp()
}
