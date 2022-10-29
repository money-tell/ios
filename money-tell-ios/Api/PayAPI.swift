//
//  Api.swift
//  money-tell-ios
//
//  Created by i.gerenko on 30.07.2022.
//

import Foundation



struct Pays {
    var date: Date
    var items: [Pay]
}

struct Pay: Identifiable {
    var id = UUID()
    var title: String
    var price: String
    var type: PaySign
    var date = Date()
    var createdAt = Date()
    var updatedAt = Date()
    var repeatType: RepeatPayType = .none
}

enum PaySign {
    case income, expenses
}

enum RepeatPayType: String, Equatable, CaseIterable, Hashable {
    case none = "Not"
    case вaily = "Daily"
    case weekly = "Weekly"
    case monthly = "Monthly"
    
    var localizedName: String { rawValue }
}

class PayAPI {
    static let shared = PayAPI()
    private init() {}
    
    private let session = URLSession.shared
    
    func fetchPays() -> [Pays] {
        return [
            Pays(
                date: Date(),
                items: [
                    Pay(title: "Apple One", price: "100", type: .expenses),
                    Pay(title: "Youtube Premium", price: "10", type: .expenses),
                    Pay(title: "Apple One", price: "100", type: .expenses),
                    Pay(title: "Youtube Premium", price: "10", type: .expenses),
                    Pay(title: "Apple One", price: "100", type: .expenses),
                    Pay(title: "Зарплата", price: "10", type: .income),
                    Pay(title: "Youtube Premium", price: "10", type: .expenses),
                    
                ]),
        ]
    }
}
