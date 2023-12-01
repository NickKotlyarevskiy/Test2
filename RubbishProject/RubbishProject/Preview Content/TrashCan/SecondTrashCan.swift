//
//  SecondTrashCan.swift
//  RubbishProject
//
//  Created by Nikita Kotlyarevskiy on 10.11.2023.
//

import SwiftUI

struct SecondTrashCan: View {
    let trashCanSize: CGFloat
    let rubbishType: String
    
    var body: some View {
        Image(.rubbishBinGlass)
            .resizable()
            .scaledToFit()
            .frame(width: trashCanSize,height: trashCanSize)
        
        
    }
}

#Preview {
    SecondTrashCan(trashCanSize: 80, rubbishType: "")
}
