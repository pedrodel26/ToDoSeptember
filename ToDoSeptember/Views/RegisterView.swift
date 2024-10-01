//
//  RegisterView.swift
//  ToDoSeptember
//
//  Created by Pedro Delmondes  on 23/09/2024.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView(title: "Register", subtitle: "Start organizing to-dos", angle: -15, color: Color.orange)
                
                Form {
//                   
//                    if !viewModel.errorMessage.isEmpty {
//                        Text(viewModel.errorMessage)
//                            .foregroundStyle(.red)
//                    }
                    
                    TextField("Fullname", text: $viewModel.fullname)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TextField("Email Adress", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Create your account", background: .green) {
                        viewModel.register()
                    }
                }
                .offset(y: -50)
                
                
                
                Spacer()
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    RegisterView()
}
