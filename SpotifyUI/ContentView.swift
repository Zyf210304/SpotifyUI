//
//  ContentView.swift
//  SpotifyUI
//
//  Created by 张亚飞 on 2021/6/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

