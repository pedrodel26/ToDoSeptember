//
//  HeaderView.swift
//  ToDoSeptember
//
//  Created by Pedro Delmondes  on 24/09/2024.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let color: Color
    
    
    var body: some View {
        //MARK: - Header
        ZStack {
            RoundedRectangle(cornerSize: .zero)
                .fill(color)
                .rotationEffect(Angle(degrees: angle))
                /*.rotationEffect(.radians(-50))*/ // Adjust angle for diagonal
                
            
            VStack {
                Text(title)
                    .font(.system(size: 38))
                    .bold()
                
                Text(subtitle)
                    .font(.title2)
                    
            }
            .foregroundStyle(.white)
            .padding(.top, 60)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
//                .frame(width: 480, height: 200)
        .offset(y: -150) // Adjust offset for positioning
        
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "shuffle mode", angle: 15, color: Color.blue)
}
