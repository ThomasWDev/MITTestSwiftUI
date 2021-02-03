//
//  Card.swift
//  TestSwiftUI
//
//  Created by Thomas Woodfin on 2/3/21.
//

import Foundation
import SwiftUI

struct Card : Identifiable{
    var id = UUID()
    let imageName: String
    let text: String
    let colors: [Color]
    let buttonTitle: String
}
