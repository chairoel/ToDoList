//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Chairul Amri on 06/03/25.
//

import SwiftUI

@main
struct ToDoListApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
