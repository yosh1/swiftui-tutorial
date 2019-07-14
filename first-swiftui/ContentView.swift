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
}

struct CircleImage : View {
    var body: some View{
        Image("yoshitetsu_")
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
