//
//  PackageView.swift
//  RubbishProject
//
//  Created by Nikita Kotlyarevskiy on 14.11.2023.
//

import SwiftUI

struct PackageView: View {
    @State var isDragging = false
    @State var possition = CGSize.zero
    
    let packageSize: CGFloat
    let rubbishType: String
    
    var body: some View {
        Image(.rubbishPackage)
            .resizable()
            .scaledToFit()
            .cornerRadius(28)
            .shadow(radius: 4)
            .frame(width: packageSize, height: packageSize)
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
    PackageView(packageSize: 120, rubbishType: "Mixed")
}
