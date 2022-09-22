//
//  HalfPlayerView.swift
//
//  Created by ToKoRo on 2022-09-22.
//

import AVKit
import SwiftUI

struct HalfPlayerView: View {
    var body: some View {
        GeometryReader { container in
            VStack {
                if let player = Video.player {
                    ZStack {
                        Color.black
                        VideoPlayer(player: player)
                    }
                        .frame(height: container.size.height / 2)
                    Spacer()
                        .frame(height: container.size.height / 2)
                } else {
                    Spacer()
                }
            }
        }
    }
}

// MARK: - Previews

struct HalfPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        HalfPlayerView()
    }
}
