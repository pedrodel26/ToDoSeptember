//
//  TLButton.swift
//  ToDoSeptember
//
//  Created by Pedro Delmondes  on 24/09/2024.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                Rectangle()
                    .fill(background)
                    .clipShape(.rect(cornerRadius: 10))
                    .frame(width: 320, height: 45)
                
                Text(title)
                    .foregroundStyle(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(title: "Button main", background: Color.yellow) {
        
    }
}
