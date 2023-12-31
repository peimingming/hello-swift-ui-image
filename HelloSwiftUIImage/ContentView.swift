//
//  ContentView.swift
//  HelloSwiftUIImage
//
//  Created by 裴明明 on 2023/10/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("CustomSFSymbolsContentView") {
                    CustomSFSymbolsContentView()
                }
                NavigationLink("ImageResourceContentView") {
                    ImageResourceContentView()
                }
            }
            .navigationTitle("Image Demo Views")
        }
    }
}

#Preview {
    ContentView()
}
