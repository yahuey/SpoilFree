//  Created by Javier Benitez on 2/8/21.
//

import SwiftUI

struct BookDetail: View {
    var book: Book
   
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(verbatim: book.Title)
                    .font(.title)

                HStack {
                    Text(book.genre)
                        .font(.subheadline)
                    Spacer()
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()

                Text("About \(book.Title)")
                    .font(.title2)
                    .padding()
                    Text("")
                Text(book.description2)
                    Text("")
                Text(book.description)
            }
            .padding()
        }
        .navigationTitle(book.Title)
              .navigationBarTitleDisplayMode(.inline)
    }
}


struct BookDetail_Previews: PreviewProvider {
    static var previews: some View {
        BookDetail(book: books[0])
    }
}
