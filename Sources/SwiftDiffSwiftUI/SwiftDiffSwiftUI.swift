import SwiftDiff
import Foundation
import SwiftUI

// function that crates a AttributeString from a diff
func attributedString(from diffs: [Diff]) -> AttributedString {
    var attributedString = AttributedString()

    for diff in diffs {
        switch diff {
        case let .delete(text):
            var attrStr = AttributedString(text)
            attrStr.foregroundColor = .red
            attributedString.append(attrStr)
        case let .insert(text):
            var attrStr = AttributedString(text)
            attrStr.foregroundColor = .green
            attributedString.append(attrStr)
        case let .equal(text):
            attributedString.append(AttributedString(text))
        }
    }

    return attributedString
}

// AttributeString from two texts
public func diffAttributedString(text1: String, text2: String) -> AttributedString {
    let diffs = diff(text1: text1, text2: text2)
    return attributedString(from: diffs)
}

public func diffAttributedString(_ text1: String, _ text2: String) -> AttributedString {
    diffAttributedString(text1: text1, text2: text2)
}