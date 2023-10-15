//
//  ImageResourceContentView.swift
//  HelloSwiftUIImage
//
//  Created by 裴明明 on 2023/10/15.
//

import SwiftUI

struct ImageResourceContentView: View {
    var body: some View {
        VStack {
            List {
                Image(.customCircleCopy)
                Image(.customCircleSymbol)
                Image(.customCircleTemplate)                
            }
            
            VStack(alignment: .leading) {
                Text("Official document: https://developer.apple.com/documentation/swiftui/image/init(_:)")
            }
        }
        .padding()
        .navigationTitle("ImageResource Demo")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ImageResourceContentView()
}
