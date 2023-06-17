//
//  StockListRow.swift
//  StockList-SwiftUI
//
//  Created by YUJIN KWON on 2023/06/17.
//

import SwiftUI

struct StockListRow: View {
    
    var body: some View {
        HStack {
            Text("1")
                .font(.system(size: 16, weight: .bold))
                .frame(width: 30)
                .foregroundColor(.blue)
            Image("TSLA")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            VStack(alignment: .leading, spacing: 5) {
                Text("TSLA")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                HStack {
                    Text("1,000,000 원")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    Text("+0.4%")
                        .font(.system(size: 12))
                        .foregroundColor(.red)
                }
            }
            
            Spacer()
            
            Image(systemName: "heart.fill")
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .foregroundColor(.gray)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.black)
    }
}

struct StockListRow_Previews: PreviewProvider {
    static var previews: some View {
        StockListRow()
    }
}
