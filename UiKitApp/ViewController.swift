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
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    @IBOutlet var button: UIButton!
    @IBOutlet var dataPicker: UIDatePicker!
    @IBOutlet var switchForm: UISwitch!
    
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
        
        //MARK: Slider
        slider.value = 1
        ///означает насколько левее может дойти ползунок
        slider.minimumValue = 1
        ///означает насколько правее может дойти ползунок
        slider.maximumValue = 100
        ///подсветка прогресса
        slider.minimumTrackTintColor = .yellow
        ///подсветка всей линии,то есть ее бекграунда
        slider.maximumTrackTintColor = .blue
        ///цвет кнопки
        slider.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        
        ///замена текста лейбла на значение слайдера
        ///статическое число
        mainLabel.text = String(slider.value)
        
        //MARK: TextField
        //можем писать в placeHolder и оно будет подсвечиваться серым
        textField.backgroundColor = .white
        ///не дает человеку вбивать что то кроме цифр
        textField.keyboardType = .numberPad
        
        //MARK: Button
        button.layer.cornerRadius = 10
        button.setTitle("Готово", for: .normal)
        
        //MARK: DatePicker
        
        
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
    
    ///динамическое изменение числа
    @IBAction func sliderAction() {
      //  mainLabel.text = String(slider.value) - будет с дробной частью
        mainLabel.text = String(Int(slider.value)) // - без дробной
    }
    

    @IBAction func mainButtonAction(_ sender: Any) {
        ///проверка на nil
        guard let text = textField.text, !text.isEmpty else{return}
        mainLabel.text = text
        }
    
    
    
    @IBAction func dataPickerAction(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        
        ///при указании даты оно выводиться в лейбл
        mainLabel.text = dateFormatter.string(from: dataPicker.date)
        
    }
    ///скрываем элементы
    @IBAction func toggleElements(_ sender: Any) {
        segmentControl.isHidden = !switchForm.isOn
        mainLabel.isHidden = !switchForm.isOn
        slider.isHidden = !switchForm.isOn
        textField.isHidden = !switchForm.isOn
        button.isHidden = !switchForm.isOn
        dataPicker.isHidden = !switchForm.isOn
     
    }
    
    
    
    }
    
    


