//
//  PaysViewModel.swift
//  money-tell-ios
//
//  Created by i.gerenko on 03.08.2022.
//

import SwiftUI


enum DataFetchPhase<T> {
    case empty
    case success(T)
    case failure(Error)
}
@MainActor
class PaysViewModel: ObservableObject {
    
    @Published var phase = DataFetchPhase<[Pays]>.empty
    private let api = PayAPI.shared
    
    init(pays: [Pays]? = nil) {
        if let pays = pays {
            self.phase = .success(pays)
        } else {
            self.phase = .empty
        }
    }
    
    func loadPays() async {
        if Task.isCancelled { return }
        phase = .empty
        
        let pays = api.fetchPays()
        if Task.isCancelled { return }
        phase = .success(pays)
        
//        do {
//            let pays = try await api.fetch(from: fetchTaskToken.category)
//
//        } catch {
//            if Task.isCancelled { return }
//            print(error.localizedDescription)
//            phase = .failure(error)
//        }
    }
}
