//
//  AddPersonViewController.swift
//  sdfs
//
//  Created by Эмиль on 31.08.2021.
//

import UIKit

// MARK: - AddPersonViewController(*)

final class AddPersonViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            navigationController?.navigationBar.prefersLargeTitles = true

            let appearance = UINavigationBarAppearance()
            appearance.backgroundColor = .clear
            navigationController?.navigationBar.tintColor = .clear
    }
    // MARK: - Initializers

    var genderPicker = UIPickerView()
    let datePicker = UIDatePicker()
    var agePicker = UIPickerView()
    
    let gender = ["Мужской", "Женский"]
    let ageTF = UITextField(frame: CGRect(x: 20, y: 430, width: 380, height: 40))
    let genderTF = UITextField(frame: CGRect(x: 20, y: 590, width: 380, height: 40))

// MARK: - Private Methods

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
        
// MARK: - Visual Components
        
        navigationController?.setNavigationBarHidden(false, animated:true)
        let myBackButton:UIButton = UIButton()
        myBackButton.addTarget(self, action: #selector(popToRoot), for: UIControl.Event.touchUpInside)
        myBackButton.setTitle("Назад", for: UIControl.State.normal)
        myBackButton.setTitleColor(UIColor.orange, for: UIControl.State.normal)
        myBackButton.sizeToFit()
        let myCustomBackButtonItem:UIBarButtonItem = UIBarButtonItem(customView: myBackButton)
        self.navigationItem.leftBarButtonItem  = myCustomBackButtonItem



        view.backgroundColor =  UIColor(patternImage: UIImage(named: "desktop.png")!)

        let nameLabel = UILabel(frame: CGRect(x: 20, y: 310, width: 300, height: 50))
        nameLabel.text = "Имя"
        nameLabel.font = UIFont.boldSystemFont(ofSize: 22.0)
        view.addSubview(nameLabel)
        
        let ageLabel = UILabel(frame: CGRect(x: 20, y: 390, width: 300, height: 50))
        ageLabel.text = "Возраст"
        ageLabel.font = UIFont.boldSystemFont(ofSize: 22.0)
        view.addSubview(ageLabel)
        
        let dateLabel = UILabel(frame: CGRect(x: 20, y: 470, width: 300, height: 50))
        dateLabel.text = "Дата"
        dateLabel.font = UIFont.boldSystemFont(ofSize: 22.0)
        view.addSubview(dateLabel)
        
        let genderLabel = UILabel(frame: CGRect(x: 20, y: 550, width: 300, height: 50))
        genderLabel.text = "Ваш пол"
        genderLabel.font = UIFont.boldSystemFont(ofSize: 22.0)
        view.addSubview(genderLabel)
        
        let instagramLabel = UILabel(frame: CGRect(x: 20, y: 630, width: 300, height: 50))
        instagramLabel.text = "Instagram"
        instagramLabel.font = UIFont.boldSystemFont(ofSize: 22.0)
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
        nameTF.backgroundColor = .white
        nameTF.placeholder = "   Введите имя"
        nameTF.layer.cornerRadius = 20
        view.addSubview(nameTF)
        
        ageTF.backgroundColor = .white
        ageTF.placeholder = "  Укажите возраст"
        ageTF.layer.cornerRadius = 20
        ageTF.inputView = agePicker
        agePicker.tag = 0
        agePicker.dataSource = self
        agePicker.delegate = self
        view.addSubview(ageTF)
        
        let dateTF = UITextField(frame: CGRect(x: 20, y: 510, width: 380, height: 40))
        dateTF.backgroundColor = .white
        dateTF.placeholder = "  Введите дату"
        dateTF.layer.cornerRadius = 20
        dateTF.inputView = datePicker
        view.addSubview(dateTF)
        
      
        genderTF.backgroundColor = .white
        genderTF.placeholder = "  Ваш пол"
        genderTF.layer.cornerRadius = 20
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
        
// MARK: - Public methods

    }
@objc func buttonAction(sender: UIButton) {
        let usernameInstagram = UIAlertController(title: "Внимание", message: "Введите username в Инстаграме", preferredStyle: .alert)
        usernameInstagram.addTextField()
        usernameInstagram.textFields?[0].placeholder = "Например, @cristiano"
        usernameInstagram.addAction(UIAlertAction(title: "Готово", style: .default))
        usernameInstagram.addAction(UIAlertAction(title: "Отмена", style: .cancel))
        present(usernameInstagram, animated: true, completion: nil)
      }
    
    @objc func popToRoot(sender:UIButton){
         let backVC = BirthdayViewController(nibName: nil, bundle: nil)
         let navigationVC = UINavigationController(rootViewController: backVC)
         navigationVC.modalPresentationStyle = .fullScreen
         present(navigationVC, animated: true, completion: nil)        }
}
