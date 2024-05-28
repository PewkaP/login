//
//  ContentView.swift
//  login
//
//  Created by Piotr Plewka on 22/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //LoginView()
        NavigationStack{
            NavigationLink("LoginView", destination: LoginView())
            Text("")
            Text("")
            NavigationLink("SignupView", destination: SignUpView())
        }
        
    }
}

#Preview {
    ContentView()
}
