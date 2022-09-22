//
//  ContentView.swift
//  PlayerSample
//
//  Created by Yuta Tokoro on 2022/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section("SwiftUI") {
                    NavigationLink(destination: FullPlayerView()) {
                        HStack {
                            Text("Full")
                            Spacer()
                        }
                    }
                    NavigationLink(destination: HalfPlayerView()) {
                        HStack {
                            Text("1/2")
                            Spacer()
                        }
                    }
                    NavigationLink(destination: SmallPlayerView()) {
                        HStack {
                            Text("Small")
                            Spacer()
                        }
                    }
                }
                Section("UIKit") {
                    NavigationLink(destination: EmbeddedAVPlayerView()) {
                        HStack {
                            Text("Embedded AVPlayer")
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
