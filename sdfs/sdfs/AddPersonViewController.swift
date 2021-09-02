//
//  AddPersonViewController.swift
//  sdfs
//
//  Created by Эмиль on 31.08.2021.
//

import UIKit

final class AddPersonViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    var genderPicker = UIPickerView()
    let datePicker = UIDatePicker()
    var agePicker = UIPickerView()
    
    let gender = ["Мужской", "Женский"]
    let ageTF = UITextField(frame: CGRect(x: 20, y: 430, width: 380, height: 40))
    let genderTF = UITextField(frame: CGRect(x: 20, y: 590, width: 380, height: 40))
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 0:
            return 80
        case 1:
            return gender.count
        default:
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 0:
            return String(row)
        case 1:
            return gender[row]
        default:
            return ""
            
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag {
        case 0:
            ageTF.text = String(row)
        case 1:
            genderTF.text = gender[row]
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let nameLabel = UILabel(frame: CGRect(x: 20, y: 310, width: 300, height: 50))
        nameLabel.text = "Имя"
        view.addSubview(nameLabel)
        
        let ageLabel = UILabel(frame: CGRect(x: 20, y: 390, width: 300, height: 50))
        ageLabel.text = "Возраст"
        view.addSubview(ageLabel)
        
        let dateLabel = UILabel(frame: CGRect(x: 20, y: 470, width: 300, height: 50))
        dateLabel.text = "Дата"
        view.addSubview(dateLabel)
        
        let genderLabel = UILabel(frame: CGRect(x: 20, y: 550, width: 300, height: 50))
        genderLabel.text = "Ваш пол"
        view.addSubview(genderLabel)
        
        let instagramLabel = UILabel(frame: CGRect(x: 20, y: 630, width: 300, height: 50))
        instagramLabel.text = "Instagram"
        view.addSubview(instagramLabel)
        
        let addPersonImage : UIImageView
        addPersonImage  = UIImageView(frame:CGRect(x: 120, y: 100, width: 200, height: 200))
        addPersonImage.image = UIImage(named:"notPhoto.png")
        addPersonImage.layer.masksToBounds = true
        addPersonImage.layer.cornerRadius = addPersonImage.frame.size.width/2
        addPersonImage.clipsToBounds = true
        view.addSubview(addPersonImage)
        
        let editPhoto = UILabel(frame: CGRect(x: 140, y: 215, width: 400, height: 200))
        editPhoto.text = "Изменнить фото"
        editPhoto.textColor = .systemBlue
        editPhoto.font = UIFont.boldSystemFont(ofSize: 19)
        view.addSubview(editPhoto)
        
        datePicker.preferredDatePickerStyle = .wheels
        
        let nameTF = UITextField(frame: CGRect(x: 20, y: 350, width: 380, height: 40))
        nameTF.backgroundColor = .lightGray
        nameTF.placeholder = "Введите имя"
        view.addSubview(nameTF)
        
        ageTF.backgroundColor = .lightGray
        ageTF.placeholder = "Укажите возраст"
        ageTF.inputView = agePicker
        agePicker.tag = 0
        agePicker.dataSource = self
        agePicker.delegate = self
        view.addSubview(ageTF)
        
        let dateTF = UITextField(frame: CGRect(x: 20, y: 510, width: 380, height: 40))
        dateTF.backgroundColor = .lightGray
        dateTF.placeholder = "Введите дату"
        dateTF.inputView = datePicker
        view.addSubview(dateTF)
        
      
        genderTF.backgroundColor = .lightGray
        genderTF.placeholder = "Ваш пол"
        genderTF.inputView = genderPicker
        genderPicker.tag = 1
        genderPicker.delegate = self
        genderPicker.dataSource = self
        view.addSubview(genderTF)
        
        let instagramButton = UIButton(frame: CGRect(x: 20, y: 680, width: 380, height: 50))
        instagramButton.backgroundColor = UIColor(hue: 0.8139, saturation: 1, brightness: 0.76, alpha: 1.0)
        instagramButton.setTitle("Добавить инстаграм", for: .normal)
        instagramButton.layer.cornerRadius = 20
        instagramButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        view.addSubview(instagramButton)

    }
@objc func buttonAction(sender: UIButton) {
        let usernameInstagram = UIAlertController(title: "Внимание", message: "Введите username в Инстаграме", preferredStyle: .alert)
        usernameInstagram.addTextField()
        usernameInstagram.textFields?[0].placeholder = "Например, @cristiano"
        usernameInstagram.addAction(UIAlertAction(title: "Готово", style: .default))
        usernameInstagram.addAction(UIAlertAction(title: "Отмена", style: .cancel))
        present(usernameInstagram, animated: true, completion: nil)
      }
}
