//
//  ObservableBootcamp.swift
//  SwiftFulThinking
//
//  Created by Philophobic on 26/12/24.
//

import SwiftUI

@Observable class ObservableViewModel {
    
    var title: String = "Some title"
    //@ObservationIgnored var value: String = "Some title"
}

struct ObservableBootcamp: View {
    
    @State private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack(spacing: 40) {
            Button(viewModel.title) {
                viewModel.title = "new title!"
            }
            
            SomeChildView(viewModel: viewModel)
            
            SomeThirdView()
        }
        .environment(viewModel)
    }
}

struct SomeChildView: View {
    
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "asdkjf;alsdjfl;ksadjf!"
        }
    }
}

struct SomeThirdView: View {
    
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Third view!!!!!"
        }
    }
}

#Preview {
    ObservableBootcamp()
}
