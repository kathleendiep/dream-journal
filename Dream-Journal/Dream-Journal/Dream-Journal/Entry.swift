//
//  Entry.swift
//  Dream-Journal
//
//  Created by Kathleen Diep on 7/6/22.
//

import UIKit

// Title
// Date
// Body
// ID

// Class (Reference) vs. Struct(Value)
// C R S V
// What is the struct?
// Struct is like a class
    // - cannot inherit
    // - memberwise initializer
    // - structs are VALUE types (Classes are reference type)
    // - lightweight / can be recreated


struct Entry {
    var title: String
    var Date?: Date()
    var body: String
    var id?: UUID() // must have this
}



