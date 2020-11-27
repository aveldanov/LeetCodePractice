//
//  TodoList.swift
//  TodoPractice
//
//  Created by Veldanov, Anton on 10/17/20.
//

import Foundation



class DataNames{
//    static let instance = DataNames()
    private let names = [
    Item(name: "A"),
    Item(name: "B"),
    Item(name: "C")

]
   
    
    
    func getNames()->[Item]{
        return names
    }
}



