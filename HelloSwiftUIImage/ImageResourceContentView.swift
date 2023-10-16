//
//  ImageResourceContentView.swift
//  HelloSwiftUIImage
//
//  Created by 裴明明 on 2023/10/15.
//

import SwiftUI
import HelloSwiftUIImagePackage

struct ImageResourceContentView: View {
    var body: some View {
        VStack {
            List {
                Section(header: Text("Images from the main app")) {
                    Image(.customCircleCopy)
                    Image(.customCircleSymbol)
                    Image(.customCircleTemplate)
                }
                
                Section(header: Text("Images from a Swift package")) {
                    Image.customPencil
                    Image.customEraser
                    Image.customBag
                }
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
