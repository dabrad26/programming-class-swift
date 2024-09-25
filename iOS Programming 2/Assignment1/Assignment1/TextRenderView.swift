//
//  TextRenderView.swift
//  Assignment1
//
//  Created by David Bradshaw on 9/24/24.
//

import SwiftUI

struct TextRenderView: View {
    @Binding var currentText: String;
    
    var body: some View {
        Text(currentText)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.red)
            .multilineTextAlignment(.center)
            .padding(.all, 20)
            .border(.yellow)
            .lineLimit(3)
    }
}

#Preview {
    TextRenderView(currentText: .constant("Test Preview Text"))
}
