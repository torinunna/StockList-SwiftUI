//
//  StockListView.swift
//  StockList-SwiftUI
//
//  Created by YUJIN KWON on 2023/06/17.
//

import SwiftUI

struct StockListView: View {
    
    @StateObject var vm = StockListViewModel()
    
    var body: some View {
        NavigationView {
            List($vm.models) { $item in
                ZStack {
                    NavigationLink {
                        StockDetailView(stock: $item)
                    } label: {
                        EmptyView()
                    }
                    .opacity(0.0)
                    StockListRow(stock: $item)
                }
                .listRowInsets(EdgeInsets())
                .frame(height: 80)
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
