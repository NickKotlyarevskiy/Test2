//
//  FirstTrashCan.swift
//  RubbishProject
//
//  Created by Nikita Kotlyarevskiy on 10.11.2023.
//

import SwiftUI

struct FirstTrashCan: View {
    let trashCanSize: CGFloat
    let rubbishType: String
    
    var body: some View {
        Image(.rubbishBinMixed)
            .resizable()
            .scaledToFit()
            .frame(width: trashCanSize, height: trashCanSize)
    }
}

#Preview {
    FirstTrashCan(trashCanSize: 80, rubbishType: "")
}
