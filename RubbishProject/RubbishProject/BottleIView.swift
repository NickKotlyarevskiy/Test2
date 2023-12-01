//
//  BottleIView.swift
//  RubbishProject
//
//  Created by Nikita Kotlyarevskiy on 14.11.2023.
//

import SwiftUI

struct BottleIView: View {
    @State var isDragging = false
    @State var possition = CGSize.zero
    
    let bottleSize: CGFloat
    let rubbishType: String
    
    var body: some View {
        Image(.rubbishBottle)
            .resizable()
            .scaledToFit()
            .cornerRadius(28)
            .shadow(radius: 4)
            .frame(width: bottleSize, height: bottleSize)
            .offset(x: possition.width, y: possition.height)
            .animation(.spring)
        
        
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        possition = value.translation
                        isDragging = true
                    })
                    .onEnded({ value in
                        possition = .zero
                        isDragging = false
                    })
            )
    }
}

#Preview {
    BottleIView(bottleSize: 120, rubbishType: "Glass")
}
