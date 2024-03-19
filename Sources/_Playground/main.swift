import SwiftDiff
import SwiftDiffSwiftUI
import Foundation
import SwiftUI

let text1 = "The quick brown fox jumps over the lazy dog."
let text2 = "That quick brown fox jumped over a lazy dog."

let myDiff = diff(text1: text1, text2: text2)

print(myDiff)

let isItSo =
    myDiff == [
        .equal(text: "Th"),
        .delete(text: "e"),
        .insert(text: "at"),
        .equal(text: " quick brown fox jump"),
        .delete(text: "s"),
        .insert(text: "ed"),
        .equal(text: " over "),
        .delete(text: "the"),
        .insert(text: "a"),
        .equal(text: " lazy dog."),
    ]

print(isItSo)

print(diffAttributedString(text1: text1, text2: text2))
