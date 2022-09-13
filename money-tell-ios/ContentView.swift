//
//  ContentView.swift
//  money-tell-ios
//
//  Created by i.gerenko on 26.07.2022.
//
// https://blckbirds.com/post/custom-tab-bar-in-swiftui/

import SwiftUI
import BottomSheet

struct ContentView: View {
    @State var bottomSheetPosition: BottomSheetPosition = .hidden
    @State var modalIsOpen = false
    
    var body: some View {
        TabView {
            NavigationBarWrapperView(title: "Home") {
                Text("Home")
            }.tabItem {
                Label("Home", systemImage: "house.fill")
            }
            
            PaysTabView().tabItem {
                Label("Pays", systemImage: "list.dash")
            }
        }
//        NavigationView {
//            VStack(alignment: .leading, spacing: 0) {
//                PaysTabView()
//            }
//            .navigationTitle("test")
//            .navigationBarTitleDisplayMode(.inline)
//        }
//                    VStack {
//                        PaysTabView()
////                        AddPayView()
//                        TabBarView {
//                            modalIsOpen.toggle()
//                        }.sheet(isPresented: $modalIsOpen) {
//                            AddPayView()
//                        }
//                    }
                    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
            ContentView()
        }
    }
}
