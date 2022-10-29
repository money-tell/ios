//
//  AddPayView.swift
//  money-tell-ios
//
//  Created by i.gerenko on 13.08.2022.
//

import SwiftUI



struct AddPayView: View {
    @FocusState private var nameInFocus: Bool
    @State private var isReapeted = false
    @State var pay = Pay(title: "", price: "0", type: .expenses, createdAt: Date(), updatedAt: Date())
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {}, label: {
                    Text("Cancel")
                })
                Spacer()
                Button(action: {}, label: {
                    Text("Add")
                })
            }
            .padding(.horizontal, 15)
            .padding(.top, 20)
            VStack(alignment: .leading, spacing: 20) {
                HStack(alignment: .center, spacing: 20) {
                    Button(action: {
                        pay.type = .expenses
                    }, label: {
                        Image(systemName: "arrow.up.right")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .font(Font.system(size: 18, weight: .bold))
                    })
                    .foregroundColor(Color.white)
                    .background(pay.type == .expenses ? Color("PayTypeExp") : Color("PayTypeExpPress"))
                    .cornerRadius(10)
                    
                    
                    Button(action: {
                        pay.type = .income
                    }, label: {
                        Image(systemName: "arrow.down.left")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .font(Font.system(size: 18, weight: .bold))
                    })
                    .foregroundColor(.white)
                    .background(pay.type == .income ? Color("PayTypeInc") : Color("PayTypeIncPress"))
                    .cornerRadius(10)
                }
                TextField("Title", text: $pay.title)
                    .keyboardType(.numberPad)
                    .focused($nameInFocus)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
                            self.nameInFocus = true
                        }
                    }
                    .textFieldStyle(.roundedBorder)
                
                HStack {
                    TextField("Amount", value: $pay.price, formatter: numberFormatter)
                        .keyboardType(.numberPad)
                        .textFieldStyle(.roundedBorder)
                    DatePicker("Date", selection: $pay.date, displayedComponents: [.date])
                        .labelsHidden()
                }
                
                
                HStack {
                    Text("Repeat")
                    Spacer()
                    Picker("Reapet", selection: $pay.repeatType) {
                        ForEach(RepeatPayType.allCases, id: \.hashValue) { value in
                            Text(value.localizedName).tag(value)
                        }
                    }
                }
            }.padding()
            
            
            Spacer()
        }
    }
    
    private var numberFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.zeroSymbol = ""
        
        return formatter
    }
}

struct AddPayView_Previews: PreviewProvider {
    static var previews: some View {
        AddPayView()
            .preferredColorScheme(.light)
    }
}
