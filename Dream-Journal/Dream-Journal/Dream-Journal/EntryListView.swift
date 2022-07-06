//
//  ContentView.swift
//  Dream-Journal
//
//  Created by Kathleen Diep on 7/6/22.
//

import SwiftUI

struct EntryListView: View {
    
    @State var viewModel = EntryListViewModel() // <- make an array of entries variable
    
    var body: some View {
        NavigationView {
            List {
                Section("My Entries") {
                    // add the array
                    ForEach(viewModel.entries) { entry in
                        
                        NavigationLink {
                            // Destination
                            DetailView(entry: entry)
                        } label: {
                            VStack(alignment: .leading, spacing: 8) {
                                Text("title")
                                    .bold()
                                    .font(.headline)
                                Text("Body")
                                    .font(.system(size:14))
                            }.padding()
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Dream Journal")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        // Destination
                        Text("Hello Hackbright")
                    }
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct EntryListView_Previews: PreviewProvider {
    static var previews: some View {
        EntryListView()
        
        // for different iphones
        EntryListView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iphone 12")
        
    }
}
