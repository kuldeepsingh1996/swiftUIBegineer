//
//  ViewModelBootcamp.swift
//  SwiftFulThinking
//
//  Created by Philophobic on 18/12/24.
//

//https://www.youtube.com/watch?v=-yjKAb0Pj60&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=51


import SwiftUI


struct Fruit : Identifiable {
    let id = UUID().uuidString
    let name : String
    let count : Int
}


class FruitViewModel : ObservableObject {
    
    @Published  var fruits : [Fruit] = []
    @Published var isLoading = false
    
    
    init() {
        getFruits()
    }
    func getFruits() {
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            guard let self = self else {
                return
            }
            isLoading = false
            let fruit1 = Fruit(name: "Oranage", count: 6)
            let fruit2 = Fruit(name: "Watermelon", count: 10)
            let furuit3 = Fruit(name: "Kiwi", count: 5)
            let fruit4 = Fruit(name: "Banana", count: 12)
            fruits.append(contentsOf: [fruit1,fruit2,fruit4,furuit3])
        }
        
    }
    
    func deleteFrutis(indexSet:IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
}
struct ViewModelBootcamp: View {
    
  // @ObservedObject var vm : FruitViewModel // Mark:  ObservedObject is used for subview
    
    @StateObject var vm : FruitViewModel // used only for this class

    
    var body: some View {
        NavigationView {
            List {
                if vm.isLoading {
                    ProgressView()
                }else  {
                    ForEach(vm.fruits,id: \.id) { name in
                        HStack {
                            Text("\(name.count)")
                                .foregroundStyle(.red)
                            Text(name.name)
                        }
                    }
                    .onDelete(perform: vm.deleteFrutis)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit Lists")
            .toolbar(content: {
                NavigationLink("Next", destination: RandomScreen(vm: vm))
            })
            
        }
    }
}

struct RandomScreen : View {
    
    @ObservedObject var vm : FruitViewModel
    var body: some View {
        ZStack {
            Color.green
            
            VStack {
                ForEach(vm.fruits) { fruitName in
                    Text(fruitName.name)
                }
            }
        }
    }
}

#Preview {
    ViewModelBootcamp(vm: FruitViewModel())
}
