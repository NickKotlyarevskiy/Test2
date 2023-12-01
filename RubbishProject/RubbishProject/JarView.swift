//
//  JarView.swift
//  RubbishProject
//
//  Created by Nikita Kotlyarevskiy on 14.11.2023.
//

import SwiftUI

struct JarView: View {
    @State var isDragging = false
    @State var possition = CGSize.zero
    
    let jarSize: CGFloat
    let rubbishType: String
    
    var body: some View {
        
        Image(.rubbishJar)
            .resizable()
            .scaledToFit()
            .cornerRadius(28)
            .shadow(radius: 4)
            .frame(width: jarSize, height: jarSize)
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
    JarView(jarSize: 120, rubbishType: "Glass")
}
