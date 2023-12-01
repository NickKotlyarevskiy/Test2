//
//  TrousersView.swift
//  RubbishProject
//
//  Created by Nikita Kotlyarevskiy on 14.11.2023.
//

import SwiftUI

struct TrousersView: View {
    @State var isDragging = false
    @State var possition = CGSize.zero
    
    let trousersSize: CGFloat
    let rubbishType: String
    
    var body: some View {
        Image(.rubbishTrousers)
            .resizable()
            .scaledToFit()
            .cornerRadius(28)
            .shadow(radius: 4)
            .frame(width: trousersSize, height: trousersSize)
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
    TrousersView(trousersSize: 120, rubbishType: "Mixed")
}
