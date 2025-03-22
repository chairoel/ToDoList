//
//  MapView.swift
//  ToDoList
//
//  Created by Chairul Amri on 21/03/25.
//

import MapKit
import SwiftUI

struct MapView: View {
    var coordinate: CLLocationCoordinate2D

    var body: some View {
        Map(position: .constant(.region(region)))
    }

    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    }
}

#Preview {
    MapView(
        coordinate: CLLocationCoordinate2D(
            latitude: -6.2527223,
            longitude: 106.8687741))
}
