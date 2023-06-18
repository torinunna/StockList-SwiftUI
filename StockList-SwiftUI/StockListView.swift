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
        
        List($list) { $item in
            StockListRow(stock: $item)
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .listRowSeparator(.hidden)
                .frame(height: 80)
        }
        .listStyle(.plain)
    }
}

struct StockListView_Previews: PreviewProvider {
    static var previews: some View {
        StockListView()
            .preferredColorScheme(.dark)
    }
}
