//
//  WelcomeScreen.swift
//  Landmarks
//
//  Created by Javier Benitez on 2/12/21.
//

import SwiftUI

struct WelcomeScreen: View {
    @Binding var text: String
    @State private var editing = false
    var body: some View {
        HStack{
            TextField("Search your book", text: $text)
                .padding(15)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .foregroundColor(.black)
                .cornerRadius(8)
                .overlay(
                    HStack{
                       Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                        
                        if editing{
                            Button(action: {
                                self.text = ""
                            }, label: {
                                Image(systemName: "multiply.circle.fill")
                                .foregroundColor(.gray)
                                .padding(.trailing, 8)
                                
                            })
                        }
                        
                    }
                ).onTapGesture {
                    self.editing = true
                }
            
        }
    }
}
