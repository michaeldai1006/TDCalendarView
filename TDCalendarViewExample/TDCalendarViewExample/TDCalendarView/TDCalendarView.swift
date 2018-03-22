
import UIKit

class TDCalendarView: UIView {

    init(frame: CGRect, backgroundColor color: UIColor?) {
        super.init(frame: frame)
        
        // Background color
        if let color = color {
            self.backgroundColor = color
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
