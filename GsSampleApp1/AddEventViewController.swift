//
//  AddEventViewController.swift
//  GsSampleApp1
//
//  Created by jollyjoester on 2018/12/31.
//  Copyright © 2018 jollyjoester. All rights reserved.
//

import UIKit

class AddEventViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var eventNameTextField: UITextField!
    @IBOutlet weak var sportsKindLabel: UILabel!
    @IBOutlet weak var eventDateLabel: UILabel!
    @IBOutlet weak var eventPlaceTextField: UITextField!
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //
        eventNameTextField.delegate = self
        eventPlaceTextField.delegate = self

    }
    
    @IBAction func addSportsKind(_ sender: UIButton) {
        
        // スポーツの種類を設定（今は固定でテニス）
        sportsKindLabel.text = SportsKind.tennis.rawValue
        
    }
    
    @IBAction func addEventDate(_ sender: UIButton) {
        
        // 日付のフォーマット
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        // 日付を文字列化してLabelに表示
        eventDateLabel.text = dateFormatter.string(from: Date())
    }
    
    @IBAction func changeNumberOfPeople(_ sender: UIStepper) {
        
        numberOfPeopleLabel.text = String(sender.value)
        
    }
    
    @IBAction func save(_ sender: UIButton) {
        
        let ud = UserDefaults.standard
        let eventName: String = eventNameTextField.text ?? ""
        let eventDate: String = eventDateLabel.text ?? ""
        let eventPlace: String = eventPlaceTextField.text ?? ""
        let numberOfPeople: String = numberOfPeopleLabel.text ?? ""
        let description: String = descriptionTextView.text ?? ""
        
        print("eventName: \(eventName)")
        print("eventDate: \(eventDate)")
        print("eventPlace: \(eventPlace)")
        print("numberOfPeople: \(numberOfPeople)")
        print("description: \(description)")
        
        // TODO: バリデーション
        // TODO: 保存
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        eventNameTextField.resignFirstResponder()
        eventPlaceTextField.resignFirstResponder()
        
        return true
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
