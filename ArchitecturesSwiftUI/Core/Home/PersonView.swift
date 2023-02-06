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
        ZStack {
            Color.gray.opacity(0.2).ignoresSafeArea()
            ScrollView {
                VStack {
                    ImageView(person: person)
                        .frame(width: .infinity, height: 400)
                    
                    Text(person.details)
                    Spacer()
                }
            }
        }
        .navigationTitle(person.displayName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            PersonView(person: Person.example)
        }
    }
}
