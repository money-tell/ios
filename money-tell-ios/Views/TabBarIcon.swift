//
//  TabBarIcon.swift
//  money-tell-ios
//
//  Created by i.gerenko on 12.08.2022.
//

import SwiftUI

struct TabBarIcon: View {
     
     let width, height: CGFloat
     let systemIconName, tabName: String
     
     
     var body: some View {
         VStack {
             Image(systemName: systemIconName)
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(width: width, height: height)
                 .padding(.top, 10)
             Text(tabName)
                 .font(.footnote)
             Spacer()
         }.padding(.horizontal, -4)
     }
 }
