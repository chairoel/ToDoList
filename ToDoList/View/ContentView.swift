//
//  ContentView.swift
//  ToDoList
//
//  Created by Chairul Amri on 06/03/25.
//

import MapKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {

            MapView(
                coordinate: CLLocationCoordinate2D(
                    latitude: -6.2527223,
                    longitude: 106.8687741)
            )
            .frame(height: 300)

            CircleImage(image: Image("turtlerock"))
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }

                Divider()

                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()

            Spacer()

        }.onTapGesture {
            print("test")
        }
    }
}

#Preview {
    ContentView()
}
