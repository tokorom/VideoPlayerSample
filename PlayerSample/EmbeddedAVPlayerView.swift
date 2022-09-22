//
//  EmbeddedAVPlayerView.swift
//
//  Created by ToKoRo on 2022-09-22.
//

import AVKit
import SwiftUI

struct EmbeddedAVPlayerView: View {
    var body: some View {
        GeometryReader { container in
            VStack {
                ZStack {
                    Color.black
                    PlayerViewController()
                }
                    .frame(height: container.size.height / 2)
                Spacer()
                    .frame(height: container.size.height / 2)
            }
        }
    }
}

// MARK: - PlayerViewController

struct PlayerViewController: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        // controller.modalPresentationStyle = .fullScreen
        controller.player = Video.player
        
        return controller
    }

    func updateUIViewController(_ playerController: AVPlayerViewController, context: Context) {
    }
}

// MARK: - Previews

struct EmbeddedAVPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        EmbeddedAVPlayerView()
    }
}
