//
// Created by Adam Zielinski on 28.05.20.
// Copyright (c) 2020 MAOSMURF. All rights reserved.
//

import Foundation

struct Coordinate: Hashable {
    var row: Int;
    var column: Int;
}

class Board {

    let cells : [Coordinate: Cell]

    static func seed(_ seed: [Coordinate: Int]) -> Board {
        var cells = [Coordinate: Cell]()
        for row in (0...8) {
            for column in (0...8) {
                let coordinate: Coordinate = Coordinate(row: row, column: column)
                let cell: Cell = Cell()
                if let value = seed[coordinate] {
                    cell.setValue(value)
                }
                cells[coordinate] = cell
            }
        }
        let board = Board(cells)
        return board
    }

    fileprivate init(_ cells: [Coordinate: Cell]) {
        self.cells = cells
    }

    func isValid() -> Bool {
        true
    }
}
