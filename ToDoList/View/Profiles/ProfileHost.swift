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
            HStack {
                if editMore?.wrappedValue == .active{
                    Button("Cancel", role: .cancel){
                        draftProfile = modelData.profile
                        editMore?.animation().wrappedValue = .inactive
                    }
                }
                
                Spacer()
                EditButton()
            }

            if editMore?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
                    .onAppear{
                        draftProfile = modelData.profile
                    }
                    .onDisappear{
                        modelData.profile = draftProfile
                    }
            }
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}
