//
// Created by Adam Zielinski on 28.05.20.
// Copyright (c) 2020 MAOSMURF. All rights reserved.
//

import Foundation

class Cell {

    private var value: Int?

    func isKnown() -> Bool {
        value != nil
    }

    func setValue(_ value: Int) {
        self.value = value
    }

    func getValue() -> Int? {
        value
    }
}
