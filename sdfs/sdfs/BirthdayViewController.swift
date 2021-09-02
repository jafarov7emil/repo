//
//  BirthdayViewController.swift
//  sdfs
//
//  Created by Эмиль on 31.08.2021.
//

import UIKit
    
final class BirthdayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        let navigationBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: 400, height: 44))
        self.view.addSubview(navigationBar)
        
        let leoMessiImage : UIImageView
        leoMessiImage  = UIImageView(frame:CGRect(x: 20, y: 140, width: 80, height: 80))
        leoMessiImage.image = UIImage(named:"Messi.jpg")
        leoMessiImage.layer.masksToBounds = true
        leoMessiImage.layer.cornerRadius = leoMessiImage.frame.size.width/2
        leoMessiImage.clipsToBounds = true
        leoMessiImage.layer.borderWidth = 0.5
        view.addSubview(leoMessiImage)
        
        let leoMessiLabel = UILabel(frame: CGRect(x: 110, y: 55, width: 200, height: 200))
        leoMessiLabel.text = "Лионель Месси"
        leoMessiLabel.textColor = .white
        leoMessiLabel.font = UIFont.boldSystemFont(ofSize: 22.0)
        view.addSubview(leoMessiLabel)
        
        let leoMessiTextLabel = UILabel(frame: CGRect(x: 110, y: 35, width: 400, height: 300))
        leoMessiTextLabel.text = "12 марта. В четверг исполнится 36 лет"
        leoMessiTextLabel.textColor = .white
        view.addSubview(leoMessiTextLabel)
        
        let leoMessiDaysLabel = UILabel(frame: CGRect(x: 360, y: 105, width: 100, height: 100))
        leoMessiDaysLabel.text = "12 дней"
        leoMessiDaysLabel.textColor = .white
        view.addSubview(leoMessiDaysLabel)
        
        
        let cristianoImage : UIImageView
        cristianoImage  = UIImageView(frame:CGRect(x: 20, y: 270, width: 80, height: 80))
        cristianoImage.image = UIImage(named:"Cristiano.png")
        cristianoImage.layer.masksToBounds = true
        cristianoImage.layer.cornerRadius = cristianoImage.frame.size.width/2
        cristianoImage.clipsToBounds = true
        cristianoImage.layer.borderWidth = 0.5
        view.addSubview(cristianoImage)
        
        let cristianoLabel = UILabel(frame: CGRect(x: 110, y: 180, width: 400, height: 200))
        cristianoLabel.text = "Криштиану Роналду"
        cristianoLabel.textColor = .white
        cristianoLabel.font = UIFont.boldSystemFont(ofSize: 22.0)
        view.addSubview(cristianoLabel)
        
        let cristianoTextLabel = UILabel(frame: CGRect(x: 110, y: 160, width: 400, height: 300))
        cristianoTextLabel.text = "23 апреля. В среду исполнится 39 лет"
        cristianoTextLabel.textColor = .white
        view.addSubview(cristianoTextLabel)
        
        let cristianoDaysLabel = UILabel(frame: CGRect(x: 360, y: 230, width: 100, height: 100))
        cristianoDaysLabel.text = "51 день"
        cristianoDaysLabel.textColor = .white
        view.addSubview(cristianoDaysLabel)
        
        let mbappeImage : UIImageView
        mbappeImage  = UIImageView(frame:CGRect(x: 20, y: 400, width: 80, height: 80))
        mbappeImage.image = UIImage(named:"Mbappe.png")
        mbappeImage.layer.masksToBounds = true
        mbappeImage.layer.cornerRadius = cristianoImage.frame.size.width/2
        mbappeImage.clipsToBounds = true
        mbappeImage.layer.borderWidth = 0.5
        view.addSubview(mbappeImage)
        
        let mbappeLabel = UILabel(frame: CGRect(x: 110, y: 305, width: 400, height: 200))
        mbappeLabel.text = "Киллиан Мбаппе"
        mbappeLabel.textColor = .white
        mbappeLabel.font = UIFont.boldSystemFont(ofSize: 22.0)
        view.addSubview(mbappeLabel)
        
        let mbappeTextLabel = UILabel(frame: CGRect(x: 110, y: 285, width: 400, height: 300))
        mbappeTextLabel.text = "1 июня. Во вторник исполнится 21 год"
        mbappeTextLabel.textColor = .white
        view.addSubview(mbappeTextLabel)
        
        let mbappeDaysLabel = UILabel(frame: CGRect(x: 360, y: 355, width: 100, height: 100))
        mbappeDaysLabel.text = "88 дней"
        mbappeDaysLabel.textColor = .white
        view.addSubview(mbappeDaysLabel)
        
        let firstLine:UIImageView = UIImageView(frame: CGRect(x: 0, y: 235, width: 600, height: 1))
        firstLine.backgroundColor = .systemGray
        view.addSubview(firstLine)
        
        let secondLine:UIImageView = UIImageView(frame: CGRect(x: 0, y: 360, width: 600, height: 1))
        secondLine.backgroundColor = .systemGray
        view.addSubview(secondLine)
        
        let thirdLine:UIImageView = UIImageView(frame: CGRect(x: 0, y: 495, width: 600, height: 1))
        thirdLine.backgroundColor = .systemGray
        view.addSubview(thirdLine)
        
        let addPlayerButton = UIButton(frame: CGRect(x: 60, y: 750, width: 300, height: 50))
        addPlayerButton.backgroundColor = .systemGreen
        addPlayerButton.setTitle("Добавить футболиста", for: .normal)
        addPlayerButton.layer.cornerRadius = 20
        addPlayerButton.addTarget(self, action: #selector(addPersonViewControllerShow), for: .touchUpInside)
        view.addSubview(addPlayerButton)
        
        
    }
    
    @objc func addPersonViewControllerShow(sender: UIButton!) {
        let viewController = AddPersonViewController(nibName: nil, bundle: nil)
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.navigationBar.barTintColor = .white
        
        present(navigationController, animated: true, completion: nil)
       }

    
}
