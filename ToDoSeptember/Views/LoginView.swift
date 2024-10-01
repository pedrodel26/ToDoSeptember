//
//  LoginView.swift
//  ToDoSeptember
//
//  Created by Pedro Delmondes  on 23/09/2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()

    var body: some View {
        
        NavigationStack {
            VStack(spacing: 18) {
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, color: Color.red)
                
                VStack {       
                    Form {
                        if !viewModel.errorMessage.isEmpty {
                            Text(viewModel.errorMessage)
                                .foregroundStyle(.red) 
                        }
                        
                        TextField("Email", text: $viewModel.email)
                            .autocorrectionDisabled()
                            .textInputAutocapitalization(.never)
                        SecureField("Password", text: $viewModel.password)
                        
                        TLButton(title: "Log in", background: Color.blue){
                            viewModel.login()
                        }

                    }
                    .offset(y: -20)
                }
                
                
                VStack {
                    Text("New around here?")
                    
                    NavigationLink("Create an account") {
                        RegisterView()
                    }
                    .navigationBarBackButtonHidden(true)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
