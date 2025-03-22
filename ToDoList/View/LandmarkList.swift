//
//  LandmarkList.swift
//  ToDoList
//
//  Created by Chairul Amri on 21/03/25.
//

import SwiftUI

struct LandmarkList: View {
    
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter{landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List(filteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
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
    LandmarkList()
}
