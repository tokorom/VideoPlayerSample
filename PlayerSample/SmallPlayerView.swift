//
//  SmallPlayerView.swift
//
//  Created by ToKoRo on 2022-09-22.
//

import AVKit
import SwiftUI

struct SmallPlayerView: View {
    var body: some View {
        GeometryReader { container in
            VStack {
                if let player = Video.player {
                    ZStack {
                        Color.black
                        VideoPlayer(player: player)
                    }
                        .frame(height: container.size.width / 16 * 9)
                    Spacer()
                } else {
                    Spacer()
                }
            }
        }
    }
}

// MARK: - Previews

struct SmallPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        SmallPlayerView()
    }
}
