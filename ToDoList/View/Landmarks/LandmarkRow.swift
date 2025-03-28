//
//  LandmarkRow.swift
//  ToDoList
//
//  Created by Chairul Amri on 21/03/25.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()

            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview() {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}

#Preview("Turtle") {
    let landmarks = ModelData().landmarks
    return LandmarkRow(landmark: landmarks[0])
}

#Preview("Silver") {
    let landmarks = ModelData().landmarks
    return LandmarkRow(landmark: landmarks[1])
}
