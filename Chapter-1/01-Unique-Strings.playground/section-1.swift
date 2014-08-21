// Playground - noun: a place where people can play

import Cocoa

// String that contains unique characters
var str = "Unique"
var currentChr = str.startIndex
var tempChr = currentChr

func isUnique() --> Int {
    tempChr = tempChr.succ()
    if (currentChr == tempChr)
    {
        return false
    }
}


=