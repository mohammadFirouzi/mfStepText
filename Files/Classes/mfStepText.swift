//
//  mfStepText.swift
//
//  Created by Mohammad Firouzi on 7/2/20.
//  Copyright © 2020 Mohammad Firouzi. All rights reserved.
//

import Foundation

public class mfStepText {
    
    public var delegate: mfStepTextDelegate? = nil
    
    public var sentences = [String]()
    public var sentenceDelay = TimeInterval(1.0)
    public var charDelay = TimeInterval(0.1)
    
    private var timer = Timer()
    private var sentenceIndex = 0
    private var charIndex = 0
    private var shouldPassTimer = 0
    
    public init(){
    
    }

    public func start(){
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: charDelay, target: self, selector: #selector(timeReched), userInfo: nil, repeats: true)
    }
    
    @objc private func timeReched(){
        if shouldPassTimer > 0{
            shouldPassTimer -= 1
            return
        }
        
        delegate?.mfStepTextChanged(text: sentences[sentenceIndex].substring(toIndex: charIndex))
        
        
        if charIndex > sentences[sentenceIndex].count - 1 {
            charIndex = 0
            sentenceIndex += 1
            shouldPassTimer = charDelay == 0 ? 0 : Int(sentenceDelay / charDelay)
        }
        if sentenceIndex > sentences.count - 1 {
            sentenceIndex = 0
        }
        charIndex += 1
    }
}

public protocol mfStepTextDelegate: class {
    func mfStepTextChanged(text: String)
}

public extension mfStepTextDelegate {
    func mfStepTextChanged(text: String) {}
}

private extension String {
    var length: Int {
        return count
    }
    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }
    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }
    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }
    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
}
