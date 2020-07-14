//
//  Card.swift
//  AdBoards
//
//  Created by Nam on 6/12/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import Foundation
import UIKit

struct Card {
    var iconImage: UIImage?
    var nameCard: String
    var descriptCard: String
}

func fakeData()-> [Card] {
    let card1 = Card(iconImage: UIImage(named: "xuongrong"), nameCard: "Novice", descriptCard: "You’re new to marketing, Just getting Started. Suitable for SMEs, Entreprenours, Business Interns, Students and everyone else")
    let card2 = Card(iconImage: UIImage(named: "SmallTree"), nameCard: "Expert", descriptCard: "You’re marketing expert. You know what you are doing. Suitable for Enterprises, Marketing Professionals & Marketing Agencies.")
    
    return [card1, card2]
}
