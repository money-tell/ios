//
//  PagingData.swift
//  money-tell-ios
//
//  Created by i.gerenko on 03.08.2022.
//

import Foundation


actor PagingData {
    private(set) var currentPage = 0
    private(set) var hasReachedEnd = false
    
    let itemdPerPage: Int
    let maxPageLimit: Int
    
    init(itemsPerPage: Int, maxPageLimit: Int) {
        assert(itemsPerPage > 0, "Items per page and max page limit must be greater than zero")
        
        self.itemdPerPage = itemsPerPage
        self.maxPageLimit = maxPageLimit
    }
    
    
}
