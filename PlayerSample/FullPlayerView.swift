//
//  FullPlayerView.swift
//
//  Created by ToKoRo on 2022-09-22.
//

import AVKit
import SwiftUI

struct FullPlayerView: View {
    var body: some View {
        if let player = Video.player {
            ZStack {
                Color.black
                VideoPlayer(player: player)
            }
        } else {
            Spacer()
        }
    }
}

// MARK: - Previews

struct FullPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        FullPlayerView()
    }
}
