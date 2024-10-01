//
//  ProfileView.swift
//  ToDoSeptember
//
//  Created by Pedro Delmondes  on 23/09/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            VStack {
                
            }
            .navigationTitle("Profile")
            .toolbar {
                Button {
                    //
                } label: {
                    Image(systemName: "person.crop.circle")
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
