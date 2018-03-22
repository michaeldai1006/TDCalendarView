//
//  DemoViewController.swift
//  TDCalendarViewExample
//
//  Created by Michael Dai on 3/22/18.
//  Copyright © 2018 Tiancheng Dai. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let calendarView = TDCalendarView(frame: self.view.frame, backgroundColor: UIColor.brown)
        self.view.addSubview(calendarView)
        
        let testButton = TDDateButton(frame: CGRect.init(x: 0, y: 0, width: 40, height: 40), highLightColor: nil, fontSize: nil, fontName: nil, initDateToDisplay: nil)
        testButton.setDate(date: 10)
        calendarView.addSubview(testButton)
    }
}
