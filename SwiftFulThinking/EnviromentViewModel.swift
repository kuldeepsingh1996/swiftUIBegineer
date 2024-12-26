//
//  EnviromentViewModel.swift
//  SwiftFulThinking
//
//  Created by Philophobic on 19/12/24.
//

/*
 Watch 53 and 54 
 */

import SwiftUI

class EnviromentViewModels : ObservableObject {
    
    @Published var dataArray : [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        dataArray.append(contentsOf: ["iOS","iPad","watchOS","tvOS"])
    }
}

struct EnviromentViewModel: View {
    
    @StateObject var vm = EnviromentViewModels()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.dataArray,id: \.self) { deviceName in
                    NavigationLink(destination: DetailView(selectedItem: deviceName)) {
                        Text(deviceName)

                    }
                }
            }
        }
        .environmentObject(vm)
    }
}

struct DetailView : View {
    let selectedItem : String
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            NavigationLink(destination: FinalView()) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(.rect(cornerRadius: 30))
            }
            
        }
    }
}


struct FinalView : View {
    @EnvironmentObject var vm : EnviromentViewModels
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.blue,Color.green], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing:20) {
                    ForEach(vm.dataArray,id: \.self) { dataName in
                            Text(dataName)
                    }
                }
                .font(.headline)
                .foregroundStyle(.white)
            }
            
            
        }
    }
}
#Preview {
    EnviromentViewModel()
}
