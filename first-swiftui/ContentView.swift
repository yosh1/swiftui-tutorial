//
//  ContentView.swift
//  first-swiftui
//
//  Created by Yoshihisa Kaino on 2019/07/14.
//  Copyright © 2019 Yoshihisa Kaino. All rights reserved.
//

import SwiftUI
import MapKit

struct ContentView : View {
    var body: some View {
        VStack{
            Map().frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
        VStack(alignment: .leading){
        Text("yoshi")
            .font(.title)
            .color(.blue)
            .padding(.bottom, 10)

            HStack{
                Text("Engineer")
                    .font(.subheadline)
                    .color(.red)
                Spacer()
                Text("Node.js / Python / Docker")
                    .font(.subheadline)
                    .color(.red)
                }
            HStack{
                Text("Designer")
                    .font(.subheadline)
                    .color(.red)
                Spacer()
                Text("Sketch / Figma / XD")
                    .font(.subheadline)
                    .color(.red)
            }
            }.padding()
            Spacer()
        }
    }
}

struct CircleImage : View {
    let image = "yoshitetsu"
    var body: some View{
        Image(image)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.gray, lineWidth: 4))
        .shadow(radius: 10)
    }
}

struct Map : UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
