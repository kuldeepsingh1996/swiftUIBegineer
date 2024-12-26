//
//  ContentView.swift
//  SwiftFulThinking
//
//  Created by Philophobic on 18/12/24.
//

import SwiftUI

struct UserModel : Identifiable {
    let id = UUID().uuidString
    let displayName : String
    let userName : String
    let followersCount : Int
    let isVerfied : Bool
}


struct ContentView: View {
    
    @State private var users : [UserModel] = [
        UserModel(displayName: "Iron Man", userName: "ironMan12", followersCount: 100, isVerfied: true),
        UserModel(displayName: "Captain America", userName: "captainAmerica12", followersCount: 250, isVerfied: false),
        UserModel(displayName: "Thor", userName: "thor12", followersCount: 34, isVerfied: false)
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(users,id: \.id) { name in
                    
                    HStack(spacing:15) {
                        Circle()
                            .frame(width: 35,height: 55)
                        VStack(alignment: .leading, content: {
                            Text(name.displayName)
                                .font(.headline)
                            Text("@\(name.userName)")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        })
                        Spacer()
                        Image(systemName: name.isVerfied ? "checkmark.seal.fill" : "")
                            .foregroundStyle(.blue)
                        VStack {
                            Text("\(name.followersCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundStyle(.gray)

                        }

                    }
                    .padding(.vertical,10)
                }
                
            }
            .listStyle(InsetGroupedListStyle())
        }
    }
}

#Preview {
    ContentView()
}
