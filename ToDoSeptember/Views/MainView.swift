//
//  ContentView.swift
//  ToDoSeptember
//
//  Created by Pedro Delmondes  on 23/09/2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
//        if viewModel.isSignedIn && !viewModel.currentUserId.isEmpty {
//            accountView
//        } else {
//            LoginView()
//        }
        accountView
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}

#Preview {
    MainView()
}
