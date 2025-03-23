//
//  ContentView.swift
//  ToDoList
//
//  Created by Chairul Amri on 06/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
