//
//  LoginViewModel.swift
//  ArchitecturesSwiftUI
//
//  Created by Frédéric Helfer on 05/02/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var credentials = Credentials()
    
    init() { }
    
    
}
