//
//  UIAplication+.swift
//  ArchitecturesSwiftUI
//
//  Created by Frédéric Helfer on 06/02/23.
//

import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
