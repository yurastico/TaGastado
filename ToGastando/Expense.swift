//
//  Item.swift
//  ToGastando
//
//  Created by Yuri Cunha on 20/01/24.
//

import Foundation
import SwiftData

@Model
final class Expense {
    var name: String
    private var decimalPrice: Decimal
    var Category: ExpenseCategory
    var timestamp: Date
    
    init(name: String, price: Decimal, Category: ExpenseCategory, timestamp: Date) {
        self.name = name
        self.decimalPrice = price
        self.Category = Category
        self.timestamp = timestamp
    }
    
    var price: String {
        "\(decimalPrice)"
    }
}
@Model
final class ExpenseCategory {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
