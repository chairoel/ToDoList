//
//  LandmarkList.swift
//  ToDoList
//
//  Created by Chairul Amri on 21/03/25.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
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
