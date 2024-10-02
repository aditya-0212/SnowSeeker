//
//  ContentView.swift
//  SnowSeeker
//
//  Created by APPLE on 24/09/24.
//

import SwiftUI

struct ContentViewSecond: View {
    var body: some View {
        NavigationSplitView{
            NavigationLink("Primary") {
                Text("New view")
            }
        } detail: {
            Text("Content")
                .toolbar(.hidden, for: .navigationBar)
        }
        .navigationSplitViewStyle(.balanced)
    }
}
#Preview {
    ContentViewSecond()
}
