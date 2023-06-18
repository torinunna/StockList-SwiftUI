//
//  StockListView.swift
//  StockList-SwiftUI
//
//  Created by YUJIN KWON on 2023/06/17.
//

import SwiftUI

struct StockListView: View {
    
    @State var list = StockModel.list
    
    var body: some View {
        NavigationView {
            List($list) { $item in
                NavigationLink {
                    StockDetailView(stock: $item)
                } label: {
                    StockListRow(stock: $item)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Stock List")
        }
    }
}

struct StockListView_Previews: PreviewProvider {
    static var previews: some View {
        StockListView()
            .preferredColorScheme(.dark)
    }
}
