//
//  FirstViewController.swift
//  多画面2
//
//  Created by 方瑾 on 2019/1/21.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var sexTextField: UITextField!
    
    @IBOutlet weak var birthTextField: UITextField!
    
    @IBOutlet weak var nationTextField: UITextField!
    
    var sexPickerView = UIPickerView()
    var birthPickerView = UIPickerView()
    var nationPickerView = UIPickerView()
    
    var sexData = ["男","女","半男不女","半女不男"]
    var birthYearDate:[String] = []
    var birthMonthDate:[String] = []
    var nationDate = ["日本","中国","中国台湾","中国香港"]
    var lopcount = 69
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sexTextField.inputView = sexPickerView
        birthTextField.inputView = birthPickerView
        nationTextField.inputView = nationPickerView
        sexPickerView.delegate = self
        sexPickerView.dataSource = self
        birthPickerView.delegate = self
        birthPickerView.dataSource = self
        nationPickerView.delegate = self
        nationPickerView.dataSource = self
        

    }
    func setBirthData() {
        for i in 1...lopcount {
            let strYear = String(1950 + i)
            birthYearDate.append(strYear)
        }
        for i in 1...12 {
            birthMonthDate.append(String(i))
        }
        
    }
    
    
    @IBAction func showInfos(_ sender: UIButton) {
    }
    
}
extension FirstViewController:UIPickerViewDelegate,UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        switch pickerView {
        case sexPickerView:
            return 1
        case birthPickerView:
            return 2
        case birthPickerView:
            return 1
        default:
            return 0
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        <#code#>
    }
    
    
}
