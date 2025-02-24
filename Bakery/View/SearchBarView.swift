//
//  SearchBar.swift
//  Bakery
//
//  Created by Abeer on 28/07/1446 AH.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String //  ربط البحث بالشاشة الرئيسية

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            
            TextField("Search", text: $searchText) // البحث يكون متصل بالشاشة التي تستدعيه
                .padding(.vertical, 6)
        }
        .padding(.horizontal, 12)
        .background(Color(.systemGray6))
        .cornerRadius(8)
        .frame(height: 36)
        .padding(.horizontal, 16)
    }
}
