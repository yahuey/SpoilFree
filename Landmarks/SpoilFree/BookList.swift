import SwiftUI

struct Books: View {
    var body: some View {
        NavigationView {
            List(books) { book in
                NavigationLink(destination: BookDetail(book: book)) {
                    BookRow(book: book)
                }
            }
            .navigationTitle("Books")
        }
    }
}
