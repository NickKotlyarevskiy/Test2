//
//  BookView.swift
//  RubbishProject
//
//  Created by Nikita Kotlyarevskiy on 14.11.2023.
//

import SwiftUI

struct BookView: View {
    @State var isDragging = false
    @State var possition = CGSize.zero
    
    let bookSize: CGFloat
    let rubbishType: String
    
    var body: some View {
        
        Image(.rubbishBook)
            .resizable()
            .scaledToFit()
            .cornerRadius(28)
            .shadow(radius: 4)
            .frame(width: bookSize, height: bookSize)
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
    BookView(bookSize: 120, rubbishType: "Mixed")
}
