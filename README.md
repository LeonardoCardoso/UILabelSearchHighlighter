# UILabel Search Highlighter - Not a Library!

Not a library! *So you don’t have to increase your build time with an extra pod*.

This is a simple snippet that will help you to highlight your searches. [This is not a table filtering](https://github.com/LeonardoCardoso/UITableViewFiltering).

First off, let’s create this small extension. This is where the magic happens!

```swift
import UIKit

/// UILabel helper extension
extension UILabel {

    /**
     Highlight text in a label.
     
     - parameter value: The full text.
     - parameter highlight: The text to be highlighted.
     */
    func setText(value: String?, highlight: String?) {

        guard let value = value, let highlight = highlight else { return }

        let attributedText = NSMutableAttributedString(string: value)
        let range = (value as NSString).range(of: highlight, options: .caseInsensitive)
        let strokeTextAttributes: [NSAttributedString.Key: Any] = [
            .backgroundColor: UIColor.yellow,
            .foregroundColor: UIColor.black
        ]

        attributedText.addAttributes(strokeTextAttributes, range: range)
        self.attributedText = attributedText

    }

}
```

Then, all you have to do next is to call this function when you reuse your table view cell.

```swift
titleLabel?.setText(value: originalCellText, highlight: searchText)
```

This will produce something like this:

![](Assets/VideoDolor720.gif)

## License

None. Remember, this is not a lib!