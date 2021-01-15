//
//  PlusMenuViewController.swift
//  tableViewCell
//
//  Created by 木元健太郎 on 2021/01/02.
//

import UIKit


class PlusMenuViewController: UIViewController {

    
    @IBAction func Registration(_ sender: Any) {
       
        _ = self.navigationController?.popViewController(animated: true)
        
    }
    
    
   
    
    @IBOutlet weak var TableView: UITableView!
    
    @IBOutlet weak var buiTextField: UITextField!
    @IBOutlet weak var syumokuTextField: UITextField!
    var pickerView = UIPickerView()
    var sectionTitles = ["肩", "胸","背中","腕","足","腹"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createPickerView()
    }
    
    func createPickerView() {
            pickerView.delegate = self
           buiTextField.inputView = pickerView
            
        }

        @objc func donePicker() {
            buiTextField.endEditing(true)
        }

        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            buiTextField.endEditing(true)
        }
    
   
      override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        syumokuTextField.endEditing(true)
    }
}

extension  PlusMenuViewController: UIPickerViewDelegate{
    
}

extension  PlusMenuViewController: UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 6
    }
   
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return sectionTitles[row]
        }

        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            buiTextField.text = sectionTitles[row]
        }
    
}
