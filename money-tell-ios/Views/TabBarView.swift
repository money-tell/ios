//
//  TabBarView.swift
//  money-tell-ios
//
//  Created by i.gerenko on 13.08.2022.
//

import SwiftUI

struct TabBarView: View {
    let addAction: () -> Void
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: addAction) {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                //                    .frame(width: width/8 , height: height/8)
                    .foregroundColor(.blue)
                    .frame(width: 45, height: 45, alignment: .center)
                
            }
            Spacer()
        }.padding(.top, 5)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView{
            print("Action add")
        }
    }
}
