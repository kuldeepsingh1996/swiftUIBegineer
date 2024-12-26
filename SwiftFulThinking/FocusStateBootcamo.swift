//
//  FocusStateBootcamo.swift
//  SwiftFulThinking
//
//  Created by Philophobic on 19/12/24.
//

import SwiftUI

struct FocusStateBootcamo: View {
    
    enum OnBoardingField : Hashable {
        case username
        case password
    }
    
    @State private var username = ""
    @State private var password = ""
    @FocusState private var userNameInFoucs : OnBoardingField?
    
    var body: some View {
        VStack {
            TextField("Add your name here...", text: $username)
                .focused($userNameInFoucs, equals: .username)
                .padding(.leading)
                .frame(height:55)
                .frame(maxWidth:.infinity)
                .background(Color.gray.brightness(0.4))
                .cornerRadius(10)
            
            TextField("Add your password here...", text: $password)
                .focused($userNameInFoucs, equals: .password)

                .padding(.leading)
                .frame(height:55)
                .frame(maxWidth:.infinity)
                .background(Color.gray.brightness(0.4))
                .cornerRadius(10)
            
            Button("Toogle Button Focus") {
            }
        }
        .padding()
        
    }
}

#Preview {
    FocusStateBootcamo()
}
