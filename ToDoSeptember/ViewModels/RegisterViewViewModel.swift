//
//  RegisterViewViewModel.swift
//  ToDoSeptember
//
//  Created by Pedro Delmondes  on 23/09/2024.
//

import FirebaseFirestore
import FirebaseAuth
import Foundation

class RegisterViewViewModel: ObservableObject {
    @Published var fullname = ""
    @Published var email = ""
    @Published var password = ""
//    @Published var errorMessage = ""
    
    func register() {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) {[weak self] result, error in
            guard let userId = result?.user.uid else {
                return
            }
            self?.insertUserRecord(id: userId)
        }
    }
    
    // -> ERROR ALERT
    private func insertUserRecord(id: String) {
        let newUser = User(id: id, name: fullname, email: email, joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    private func validate() -> Bool {
        guard !fullname.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
//            errorMessage = "*Por favor, preencha seu nome"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
//            errorMessage = "*Por favor, preencha corretamente seu email"
            return false
        }
        
        guard password.count >= 6 else {
//            errorMessage = "*Senha inválida"
            return false
        }
        
        return true
    }
    
}
