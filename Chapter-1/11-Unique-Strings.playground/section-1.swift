// Goal: Implement an algorithm to determine if a string has all unique characters.
// Restriction: You cannot use any additional data structures.

import Cocoa


// As of current, Swift has no way of accessing a string
// by index. This neat little extension takes care of this issue.
extension String
{
    subscript (i: Int) -> String
    {
        return String(Array(self)[i])
    }
}


// Determines if a given string has unique characters, meaning
// that no character appears more than once.
func isUnique(currentString : String) -> Bool
{
    var lastIndex = countElements(currentString) - 1
    var lastChar = Character(currentString[lastIndex])
    

    
    var index: Int
    for (index = 0; index < lastIndex; index++)
    {
        if (!isUniqueIteration(currentString, index, index, lastChar))
        {
            return false
        }
    }
    return true;
}


// Starts from the first character in a string, and compares
// this character to every other character in the string.
// -- e.g. in the string "hello"
//      h is compared to e
//      h is compared to l
//      h is compared to l
//      h is compared to o.
// The process repeats with the next letter, e.
//      e is compared to l
//      .....
//      e is compared to o
func isUniqueIteration(currentString : String, startingIndex : Int, currentIndex : Int, lastChar : Character) -> Bool
{
    var nextIndex = currentIndex + 1
    var nextChr = Character(currentString[nextIndex])

    if (nextChr == lastChar)
    {
        var nextChrPrint = "" + nextChr
        // This iteration is unique.
        return true
    }
    
    if (nextChr == Character(currentString[startingIndex]))
    {
        // Duplicate character has been found, meaning
        // the string is not unique.
        return false
    }
    
    return isUniqueIteration(currentString, startingIndex, currentIndex + 1, lastChar);
}



// Strings that contains unique characters
var str1 = "Unique"
isUnique(str1)

var str2 = "Swift"
isUnique(str2)

// Strings that don't contain unique characters.
var str3 = "Dagger"
isUnique(str3)

var str4 = "Beautiful"
isUnique(str4)

