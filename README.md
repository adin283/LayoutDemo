# A PureLayout Demo in Swift
## please use cocoapods to install the pods
```
pod install
```
## problems below:
1. the cell display abnormally,but when I scroll the table view the cell become correctly
2. if I put HelpHistoryCell -> updateConstraints content into init method the cell is also display correctly
3. if I put the updateConstraints content into layoutSubviews, it also display correctly
4. I think the two solution above is not elegant
5. I think the problem maybe in lazy keywords or the sequence of layoutSubview and updateConstraints, but I don't know the exact reason
