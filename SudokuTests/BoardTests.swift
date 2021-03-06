//
// Created by Adam Zielinski on 28.05.20.
// Copyright (c) 2020 MAOSMURF. All rights reserved.
//

import XCTest
@testable import Sudoku

class BoardTests: XCTestCase {

    var board: Board?

    func testNewBoardIsValid() {
        var seed = [Coordinate: Int]()
        board = Board.seed(seed)
        let valid = board!.isValid()
        XCTAssertTrue(valid)
    }

}