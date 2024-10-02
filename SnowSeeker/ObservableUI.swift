//
//  ObservableUI.swift
//  SnowSeeker
//
//  Created by APPLE on 24/09/24.
//

import SwiftUI

@Observable
class Player{
    var name = "Aditya"
    var highScore = 0
}

struct HighScoreView: View {
    @Environment(Player.self) var player
    var body: some View {
//        Text("your high score:\(player.highScore)")
        @Bindable var player = player
        Stepper("High score: \(player.highScore)",value: $player.highScore)
    }
}
struct ObservableUI: View {
    @State private var player = Player()
    var body: some View {
        VStack{
            Text("Welcome !")
            HighScoreView()
        }
        .environment(player)
    }
}

#Preview {
    ObservableUI()
}
