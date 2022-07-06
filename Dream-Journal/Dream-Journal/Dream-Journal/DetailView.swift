//
//  DetailView.swift
//  Dream-Journal
//
//  Created by Kathleen Diep on 7/6/22.
//

import SwiftUI
struct DetailView: View {
    
    var entry: Entry? // <-- add entry data
    @State var entryTitleText: String = "" // < -- this is binding
    @State var entryBodyText: String = ""
    
    var body: some View {
        VStack{
            VStack(alignment: .leading) {
                Text("Title")
                TextField("Placeholder", text: $entryTitleText ) // <-- this is a state variable
            }.padding() // add to all the vstack
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Body")
                    Spacer()
                    Button {
                        entryBodyText = ""
                    }  label : {
                        Image(systemName: "xmark.circle.fill")
                    }
                }
                TextEditor(text: $entryBodyText)
            }.padding()
            Spacer()
            
            Button {
                // Action
                // STOPPING POINT
                // NEED TO SAVE ENTRY
                print(entryTitleText)
                print(entryBodyText)
            } label: {
                // What our button look like
                ZStack {
                    // very bottom
                    Rectangle().fill(.ultraThinMaterial)
                        .cornerRadius(12)
                    // very top
                    Text("Tap me")
                }
            }.frame(width: UIScreen.main.bounds.width - 40, height: 55) // setting the frame
            Spacer()
            
        }
        .navigationTitle("Detail View")
        .onAppear {
            if let entry = entry {
                entryTitleText = entry.title
                entryBodyText = entry.body
            }
        }
    }
}
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        // embed this into a navigationview to show title
        NavigationView {
            DetailView()
        }
    }
}
