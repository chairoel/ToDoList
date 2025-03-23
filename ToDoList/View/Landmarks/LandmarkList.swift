//
//  LandmarkList.swift
//  ToDoList
//
//  Created by Chairul Amri on 21/03/25.
//

import SwiftUI

struct LandmarkList: View {

    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }

    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }

                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmaks")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Hels")
                }
            }
        } detail: {
            Text("Select Landmark")
        }
    }
}

#Preview {
    LandmarkList().environment(ModelData())
}
