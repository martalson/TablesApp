//
//  Words.swift
//  TableWithSegues
//
//  Created by Martin Alonso on 8/11/14.
//  Copyright (c) 2014 martalson. All rights reserved.
//

import Foundation
var words = Words()
class Words{
    private var words = [String]()
    func addWord(word: String){
        self.words.append(word)
    }
    func value() -> [String]{
        return self.words
    }
}