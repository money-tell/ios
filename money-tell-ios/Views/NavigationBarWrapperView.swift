//
//  NavigationBarWrapperView.swift
//  money-tell-ios
//
//  Created by i.gerenko on 16.08.2022.
//

import SwiftUI

struct NavigationBarWrapperView<Content: View>: View {
    let title: String
    @ViewBuilder let content: Content
    @State var addIsOpened = false
    
    var body: some View {
        NavigationView {
            content
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Button {
                            addIsOpened.toggle()
                        } label: {
                            Image(systemName: "plus")
                        }.sheet(isPresented: $addIsOpened) {
                            AddPayView()
                        }
                        
                        // todo: Добавить показ меню с настройками главной
                        Button {
                            print("Help tapped!")
                        } label: {
                            Image(systemName: "ellipsis.circle")
                        }
                    }
                }
            }
        }
    }
}

struct NavigationBarWrapperView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarWrapperView(title: "Test") {
            Text("test")
        }
    }
}
