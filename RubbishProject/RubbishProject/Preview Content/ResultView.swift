//
//  ResultView.swift
//  RubbishProject
//
//  Created by Nikita Kotlyarevskiy on 15.11.2023.
//

import SwiftUI

struct ResultView: View {
    let resetAction: () -> Void
    
    var body: some View {
        VStack{
            Text("Попробуй ещё раз!")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(20)
            Button("Перезапуск", action: resetAction)
                .padding()
                .background(.tint)
                .foregroundColor(.white)
                .clipShape(.rect(cornerRadius: 10))
                .padding()
        }
        .background(.black.opacity(0.7))
        .clipShape(.rect(cornerRadius: 20))
        .padding()
    }
}

#Preview {
    ResultView(resetAction: {})
}
