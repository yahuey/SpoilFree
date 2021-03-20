//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Javier Benitez on 2/4/21.
//

import SwiftUI

struct BookRow: View {
    var book: Book
    var body: some View {
        HStack{
            Text(book.Title)
            Spacer()
        }
    }
}

struct BookRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        BookRow(book: books[1])
        BookRow(book: books[0])
    }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
