//
//  PersonView.swift
//  ArchitecturesSwiftUI
//
//  Created by Frédéric Helfer on 06/02/23.
//

import SwiftUI

struct PersonView: View {
    var person: Person
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person.example)
    }
}
