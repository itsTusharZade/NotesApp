//
//  StringProtocol.swift
//  TechExactly-Task
//
//  Created by Tushar Zade on 28/02/24.
//

import UIKit

extension StringProtocol where Index == String.Index {
    var partialRangeOfFirstLine: PartialRangeUpTo<String.Index> {
        return ..<(rangeOfCharacter(from: .newlines)?.lowerBound ?? endIndex)
    }
    var rangeOfFirstLine: Range<Index> {
        return startIndex..<partialRangeOfFirstLine.upperBound
    }
    var firstLine: SubSequence {
        return self[partialRangeOfFirstLine]
    }
    
    var html2AttributedString: NSAttributedString? {
        Data(utf8).html2AttributedString
    }
    var html2String: String {
        html2AttributedString?.string ?? ""
    }
}
