
import UIKit

class TDDateButton: UIButton {
    var highLightColor: UIColor
    var fontSize: Double
    var fontName: String
    var date: Int {
        didSet {
            self.dateLabel.text = "\(date)"
            self.dateLabel.sizeToFit()
        }
    }
    var dateLabel: UILabel!
    
    init(frame: CGRect, highLightColor color: UIColor?, fontSize: Double?, fontName: String?, initDateToDisplay date: Int?) {
        self.highLightColor = color ?? TDCalendarColor.defaultButtonHighLightColor
        self.fontSize = fontSize ?? TDCalendarFont.defaultDateButtonFontSize
        self.fontName = fontName ?? TDCalendarFont.defaultDateButtonFontName
        self.date = date ?? 00
        
        super.init(frame: frame)
        
        self.defineButtonShape()
        self.createLabel()
        
        self.backgroundColor = UIColor.lightGray
    }
    
    func setDate(date: Int) {
        self.date = date
    }
    
    private func createLabel() {
        dateLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        dateLabel.textAlignment = .center
        dateLabel.center = CGPoint(x: self.bounds.size.width / 2, y: self.bounds.size.height / 2)
        dateLabel.backgroundColor = UIColor.cyan
        self.addSubview(dateLabel)
    }
    
    private func defineButtonShape() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
