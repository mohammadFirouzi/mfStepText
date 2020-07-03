# mfStepText

[![Version](https://img.shields.io/cocoapods/v/mfStepText.svg?style=flat)](https://cocoapods.org/pods/mfStepText)
[![License](https://img.shields.io/cocoapods/l/mfStepText.svg?style=flat)](https://cocoapods.org/pods/mfStepText)
[![Platform](https://img.shields.io/cocoapods/p/mfStepText.svg?style=flat)](https://cocoapods.org/pods/mfStepText)

<p align="center">
  <img src="https://s7.gifyu.com/images/mfStepText720.gif" width="30%" />
</p>


## Description

mfStepText is a light library that is written in Swift and gives you the sentences in order and character by character.
It can be used to create dynamic labels or placeholders or anything else.

## Installation

mfStepText is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'mfStepText'
```

Or just import mfStepText.swift to your project

## Usage

```swift

import UIKit
import mfStepText

class ViewController: UIViewController, mfStepTextDelegate {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myTextStepper = mfStepText()
        //set sentences
        myTextStepper.sentences = ["is a light and easy to use library",
                                   "written in Swift",
                                   "available through CocoaPods",
                                   "or just import mfStepText.swift"]
        //set delegate
        myTextStepper.delegate = self
        //set custom times if you need
        myTextStepper.charDelay = 0.05
        myTextStepper.sentenceDelay = 1.0
        // and start it!
        myTextStepper.start()
        
    }
    
    //implement delegate function and use text
    func mfStepTextChanged(text: String) {
        label.text = text
    }

}

```

## Author

Mohammad Firouzi, mohammad.spz@icloud.com


## License

mfStepText is available under the MIT license. See the LICENSE file for more info.
