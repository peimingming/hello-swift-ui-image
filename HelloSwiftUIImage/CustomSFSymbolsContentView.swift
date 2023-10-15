//
//  CustomSFSymbolsContentView.swift
//  HelloSwiftUIImage
//
//  Created by 裴明明 on 2023/10/11.
//

import SwiftUI

struct CustomSFSymbolsContentView: View {
    var body: some View {
        VStack {
            List {
                Tile(title: "Single path:", imageName: "custom.circle (copy)")
                Tile(title: "Full 27 paths:", imageName: "custom.circle (template)")
                Tile(title: "Full 27 paths:", imageName: "custom.circle (symbol)")
            }
            
            VStack(alignment: .leading) {
                Text("Official document: https://developer.apple.com/documentation/uikit/uiimage/creating_custom_symbol_images_for_your_app.")
                Text("1. A single path SVG file may only support sizing and coloring.")
                Text("2. A full 27 paths SVG file supports all the SF symbols functionalities besides sizing and coloring, i.e. can be set as bold font.")
            }
        }
        .padding()
        .navigationTitle("Custom SF Symbols Demo")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Tile: View {
    let title: String
    let imageName: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                HStack {
                    Image(imageName)
                    Image(imageName)
                        .font(.body.weight(.bold))
                    Image(imageName)
                        .foregroundColor(.red)
                }
            }
        }
    }
}

#Preview {
    CustomSFSymbolsContentView()
}
