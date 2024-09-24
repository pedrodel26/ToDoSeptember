//
//  LoginView.swift
//  ToDoSeptember
//
//  Created by Pedro Delmondes  on 23/09/2024.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 18) {
                HeaderView()
                
                VStack {       
                    Form {
                        TextField("Email", text: $email)
                        SecureField("Password", text: $password)
                        
                        NavigationLink {
                            MainView()
                        } label: {
                            ZStack {
                                Rectangle()
                                    .fill(.blue)
                                    .clipShape(.rect(cornerRadius: 10))
                                
                                Text("Log in")
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                    }
                }
                
                VStack {
                    Text("New around here?")
                    
                    NavigationLink("Create an account") {
                        RegisterView()
                    }
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
