//
//  StockDetailView.swift
//  StockList-SwiftUI
//
//  Created by YUJIN KWON on 2023/06/18.
//

import SwiftUI

struct StockDetailView: View {
    
    @Binding var stock: StockModel
    
    var body: some View {
        VStack(spacing: 30) {
            Text("# of My Favorites: \(4)")
                .font(.system(size: 20, weight: .bold))
            Image(stock.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
            Text(stock.name)
                .font(.system(size: 30, weight: .bold))
            Text("\(stock.price) 원")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(stock.diff > 0 ? .red : .blue)
            
            Button {
                stock.isFavorite.toggle()
            } label: {
                Image(systemName: "heart.fill")
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
                    .foregroundColor(stock.isFavorite ? .white : .gray)
            }
        }
    }
}

struct StockDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StockDetailView(stock: .constant(StockModel.list[0]))
            .preferredColorScheme(.dark)
    }
}
