//
// Created by Adam Zielinski on 28.05.20.
// Copyright (c) 2020 MAOSMURF. All rights reserved.
//

import XCTest
@testable import Sudoku

class CellTests: XCTestCase {

    var cell: Cell?

    override func setUp() {
        cell = Cell()
    }

    func testNewCellIsNotKnown() {
        let cellIsKnown = cell!.isKnown()
        XCTAssertFalse(cellIsKnown)
    }

}