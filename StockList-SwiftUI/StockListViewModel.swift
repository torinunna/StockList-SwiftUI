//
//  StockListViewModel.swift
//  StockList-SwiftUI
//
//  Created by YUJIN KWON on 2023/06/19.
//

import Foundation

final class StockListViewModel: ObservableObject {
    @Published var models: [StockModel] = StockModel.list
    
    var numOfFavorites: Int {
        let favoriteStocks = models.filter { $0.isFavorite }
        return favoriteStocks.count
    }
}
