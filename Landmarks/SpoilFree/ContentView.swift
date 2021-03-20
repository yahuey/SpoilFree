import SwiftUI

struct ContentView: View {
    @State var text = ""
    var body: some View {
        NavigationView{
        VStack{
            Text("Welcome to SpoilFree. Search Down below").padding()
            WelcomeScreen(text: $text)
            List((books).filter({"\($0)".contains(text)}), id: \.self) { Book in
                NavigationLink(destination: BookDetail(book: Book)) {
                    BookRow(book: Book)
                }
            
            }
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

