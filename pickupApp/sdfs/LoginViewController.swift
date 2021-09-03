//
//  ViewController.swift
//  sdfs
//
//  Created by Эмиль on 31.08.2021.
//

import UIKit

// MARK: - LoginViewController(*)

final class LoginViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            navigationController?.navigationBar.prefersLargeTitles = true

            let appearance = UINavigationBarAppearance()
            appearance.backgroundColor = .clear
            navigationController?.navigationBar.tintColor = .clear
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
// MARK: - Visual Components

        view.backgroundColor =  UIColor(patternImage: UIImage(named: "desktop.png")!)
        
        var footballImage : UIImageView
        footballImage  = UIImageView(frame:CGRect(x: 20, y: 70, width: 400, height: 200));
        footballImage.image = UIImage(named:"gitlab.png")
        view.addSubview(footballImage)
        
        var faceidImage : UIImageView
        faceidImage  = UIImageView(frame:CGRect(x: 140, y: 550, width: 145, height: 100));
        faceidImage.image = UIImage(named:"faceid.png")
        view.addSubview(faceidImage)
        
        let faceidSwitch = UISwitch(frame: CGRect(x: 195, y: 670, width: 200, height: 200))
        faceidSwitch.onTintColor = UIColor(hue: 246/360, saturation: 100/100, brightness: 56/100, alpha: 1.0)
        view.addSubview(faceidSwitch)
        
        let signInLabel = UILabel(frame: CGRect(x: 35, y: 120, width: 500, height: 500))
        signInLabel.textColor = .black
        signInLabel.text = "Войти"
        signInLabel.font = UIFont.boldSystemFont(ofSize: 22.0)
        view.addSubview(signInLabel)
        
        let faceIdLabel = UILabel(frame: CGRect(x: 140, y: 550, width: 200, height: 200))
        faceIdLabel.textColor = .black
        faceIdLabel.font = UIFont.boldSystemFont(ofSize: 20)
        faceIdLabel.text = "Войти по Face ID"
        
        view.addSubview(faceIdLabel)
        
        let emailLabel = UILabel(frame: CGRect(x: 35, y: 305, width: 200, height: 200))
        emailLabel.text = "Email"
        emailLabel.font = UIFont.boldSystemFont(ofSize: 18)
        emailLabel.textColor = .black
        view.addSubview(emailLabel)
        
        let passwordLabel = UILabel(frame: CGRect(x: 35, y: 395, width: 200, height: 200))
        passwordLabel.text = "Пароль"
        passwordLabel.font = UIFont.boldSystemFont(ofSize: 18)
        passwordLabel.textColor = .black
        view.addSubview(passwordLabel)
        
        let emailTextField = UITextField(frame: CGRect(x: 35, y: 430, width: 350, height: 40))
        emailTextField.placeholder = "  Введите свою почту"
        emailTextField.backgroundColor = .white
        emailTextField.layer.cornerRadius = 10
        view.addSubview(emailTextField)
        
        let passwordTextField = UITextField(frame: CGRect(x: 35, y: 510, width: 350, height: 40))
        passwordTextField.placeholder = "  *********"
        passwordTextField.backgroundColor = .white
        passwordTextField.layer.cornerRadius = 10
        view.addSubview(passwordTextField)
        
        let loginButton = UIButton(frame: CGRect(x: 45, y: 750, width: 150, height: 50))
        loginButton.backgroundColor =         UIColor(hue: 246/360, saturation: 100/100, brightness: 56/100, alpha: 1.0)
        loginButton.setTitle("Войти", for: .normal)
        loginButton.layer.cornerRadius = 20
        loginButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        loginButton.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        loginButton.layer.shadowOpacity = 10
        loginButton.layer.shadowRadius = 0.0
        loginButton.layer.masksToBounds = false
        loginButton.layer.cornerRadius = 10
        loginButton.addTarget(self, action: #selector(birthdayViewControllerShow), for: .touchUpInside)
        view.addSubview(loginButton)
        
        let infoButton = UIButton(frame: CGRect(x: 235, y: 750, width: 150, height: 50))
        infoButton.backgroundColor = UIColor(hue: 41/360, saturation: 100/100, brightness: 100/100, alpha: 1.0)
        infoButton.setTitle("Информация", for: .normal)
        infoButton.layer.cornerRadius = 20
        infoButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        infoButton.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        infoButton.layer.shadowOpacity = 10
        infoButton.layer.shadowRadius = 0.0
        infoButton.layer.masksToBounds = false
        infoButton.layer.cornerRadius = 10
        infoButton.addTarget(self, action: #selector(infoButtonShow), for: .touchUpInside)
        view.addSubview(infoButton)
        
    }
    
// MARK: - Public methods

    @objc func birthdayViewControllerShow(sender: UIButton!) {
        let viewController = BirthdayViewController(nibName: nil, bundle: nil)
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.modalPresentationStyle = .fullScreen
        present(navigationController, animated: true, completion: nil)
    }
    
    @objc func infoButtonShow(sender: UIButton) {
        let infoPage = UIAlertController(title: "Информация",
                                         message: "Данное приложение помогает отслеживать даты рождений людей, которые Вам интересны и важны",
                                         preferredStyle: .alert)
        infoPage.addAction(UIAlertAction(title: "Понятно", style: .default))
        present(infoPage, animated: true, completion: nil)
    }
    
}

