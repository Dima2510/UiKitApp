//
//  ViewController.swift
//  UiKitApp
//
//  Created by Дмитрий Процак on 14.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var segmentControl: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //MARK: Segmented Controll
        segmentControl.insertSegment(withTitle: "Third" , at: 2 , animated: false)
        
        //MARK: Label
        mainLabel.text = ""
        ///устанавливаем размер шрифта
        mainLabel.font = mainLabel.font.withSize(30)
        ///выравнивание(центрирование)
        mainLabel.textAlignment = .center
        ///кол - во строк
        mainLabel.numberOfLines = 2 //если укажем 0 то будет бессконечно
        
    }

    
    @IBAction func segmentedControllAction(_ sender: Any) {
        switch segmentControl.selectedSegmentIndex {
        case 0 :
            mainLabel.text = "Выбран сегмент с индесом 0"
            mainLabel.textColor = .red
        case 1 :
            mainLabel.text = "Выбран сегмент с индесом 1"
            mainLabel.textColor = .yellow
        case 2 :
            mainLabel.text = "Выбран сегмент с индесом 2"
            mainLabel.textColor = .green
        default : break
            
        }
    }
    

}

