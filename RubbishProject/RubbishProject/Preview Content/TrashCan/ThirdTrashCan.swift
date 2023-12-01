//
//  ThirdTrashCan.swift
//  RubbishProject
//
//  Created by Nikita Kotlyarevskiy on 10.11.2023.
//

import SwiftUI

struct ThirdTrashCan: View {
    let trashCanSize: CGFloat
    let rubbishType: String
    
    var body: some View {
        Image(.rubbishBinMetal)
            .resizable()
            .scaledToFit()
            .frame(width: trashCanSize, height: trashCanSize)
    }
}

#Preview {
    ThirdTrashCan(trashCanSize: 80, rubbishType: "")
}
