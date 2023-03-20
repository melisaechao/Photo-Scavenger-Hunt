//
//  Tasks.swift
//  Photo Scavnger Hunt
//
//  Created by Melissa Saechao on 3/17/23.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite lunch or dinner spot",
                 description: "Where do you like to go to satisfy your cravings?!"),
            Task(title: "Your \"alone time\" place",
                 description: "This is a place you like to go to relax and zone out from everything!"),
            Task(title: "Your favorite bakery",
                 description: "Breads, cakes, pies, cookies. Yes please!"),
            Task(title: "Your favorite past time",
                 description: "What do you like to do for funsies?"),
            Task(title: "Your favorite favorirte sneakers you own",
                 description: "Lets see whats on your feet!")
        ]
    }
}

