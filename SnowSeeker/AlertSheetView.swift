//
//  AlertSheetView.swift
//  SnowSeeker
//
//  Created by APPLE on 24/09/24.
//

import SwiftUI

struct User: Identifiable {
    var id = "Taylor Swift"
}

struct AlertSheetView: View {
    @State private var selectedUser: User? = nil
    @State private var isShowingUser = false
    var body: some View {
        Button("Tap Me") {
            selectedUser = User()
            isShowingUser = true
        }
        .sheet(item: $selectedUser) { user in
            Text(user.id)
                .presentationDetents([.medium, .large])
            
        }
//        .alert("Welcome", isPresented: $isShowingUser, presenting: selectedUser) { user in
//            Button(user.id) { }
//        }
        
    }
}

#Preview {
    AlertSheetView()
}
