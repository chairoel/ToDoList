//
//  ProfileHost.swift
//  ToDoList
//
//  Created by Chairul Amri on 25/03/25.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMore
    @Environment(ModelData.self) var modelData
    @State private var draftProfile = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack{
                Spacer()
                EditButton()
            }
            
            if editMore?.wrappedValue == .inactive{
                ProfileSummary(profile: modelData.profile)
            } else {
                Text("Profile Editor")
            }
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}
