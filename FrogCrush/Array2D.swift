//
//  Array2D.swift
//  FrogCrush
//
//  Created by Fareed Quraishi on 2017-01-31.
//  Copyright © 2017 Treefrog Inc. All rights reserved.
//

struct Array2D<T> {
    let columns: Int
    let rows: Int
    fileprivate var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        array = Array<T?>(repeating: nil, count: rows*columns)
    }
    
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[row*columns + column]
        }
        set {
            array[row*columns + column] = newValue
        }
    }
}
