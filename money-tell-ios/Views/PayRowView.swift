//
//  TransactionRow.swift
//  money-tell-ios
//
//  Created by i.gerenko on 01.08.2022.
//

import SwiftUI

struct PayRowView: View {
    @State var pay: Pay
    
    var body: some View {
        HStack() {
            Text("S")
            .font(.title3)
            .padding(12)
            .frame(width: 44, height: 44)
            .background(Color(red: 0.93, green: 0.95, blue: 0.97))
            .cornerRadius(8)
            .foregroundColor(Color(red: 0, green: 0.36, blue: 0.93))
            

            VStack(alignment: .leading, spacing: 4) {
                Text(pay.title)
                    .lineLimit(1)
                    .font(.callout)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
            }

            Text("+ 32,123")
            .font(.callout)
            .multilineTextAlignment(.trailing)
            .foregroundColor(Color(red: 0.10, green: 0.72, blue: 0.20))
        }
    }
}

struct PayRowView_Previews: PreviewProvider {
    static var previews: some View {
        PayRowView(pay: Pay(title: "Apple One", price: "100", type: .expenses, createdAt: Date(), updatedAt: Date()))
    }
}
