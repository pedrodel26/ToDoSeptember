//
//  HeaderView.swift
//  ToDoSeptember
//
//  Created by Pedro Delmondes  on 24/09/2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        //MARK: - Header
        ZStack {
            RoundedRectangle(cornerSize: .zero)
                .fill(Color.red)
                .rotationEffect(Angle(degrees: 15))
                /*.rotationEffect(.radians(-50))*/ // Adjust angle for diagonal
                
            
            VStack {
                Text("To Do List")
                    .font(.system(size: 38))
                    .bold()
                
                Text("Get things done")
                    .font(.title2)
                    
            }
            .foregroundStyle(.white)
            .padding(.top, 45)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 290)
//                .frame(width: 480, height: 200)
        .offset(y: -100) // Adjust offset for positioning
        
    }
}

#Preview {
    HeaderView()
}
