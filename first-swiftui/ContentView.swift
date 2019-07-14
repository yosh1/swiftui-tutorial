//
//  ContentView.swift
//  first-swiftui
//
//  Created by Yoshihisa Kaino on 2019/07/14.
//  Copyright © 2019 Yoshihisa Kaino. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack{
        Text("Title")
            .font(.title)
            .color(.blue)
        Text("Subheadline")
            .font(.subheadline)
            .color(.yellow)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
