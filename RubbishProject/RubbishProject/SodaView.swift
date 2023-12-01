//
//  SodaView.swift
//  RubbishProject
//
//  Created by Nikita Kotlyarevskiy on 14.11.2023.
//

import SwiftUI

struct SodaView: View {
    @State var isDragging = false
    @State var possition = CGSize.zero
    
    let sodaSize: CGFloat
    let rubbishType: String
    
    var body: some View {
        Image(.rubbishSoda)
            .resizable()
            .scaledToFit()
            .cornerRadius(28)
            .shadow(radius: 4)
            .frame(width: sodaSize, height: sodaSize)
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
    SodaView(sodaSize: 120, rubbishType: "Metal")
}
