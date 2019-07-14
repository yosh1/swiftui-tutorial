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
        VStack(alignment: .leading){
        Text("VStack")
            .font(.title)
            .color(.blue)

            HStack{
                Text("VStack in HStack")
                    .font(.subheadline)
                    .color(.red)
                Spacer()
                Text("VStack in HStack")
                    .font(.subheadline)
                    .color(.red)
            }
        }.padding(75)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
