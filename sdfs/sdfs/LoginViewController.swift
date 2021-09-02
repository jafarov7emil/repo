//
//  ViewController.swift
//  sdfs
//
//  Created by Эмиль on 31.08.2021.
//

import UIKit

final class LoginViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        
        var footballImage : UIImageView
        footballImage  = UIImageView(frame:CGRect(x: 70, y: 70, width: 290, height: 290));
        footballImage.image = UIImage(named:"striker.png")
        view.addSubview(footballImage)
        
        var faceidImage : UIImageView
        faceidImage  = UIImageView(frame:CGRect(x: 140, y: 550, width: 145, height: 100));
        faceidImage.image = UIImage(named:"faceid.png")
        view.addSubview(faceidImage)
        
        let faceidSwitch = UISwitch(frame: CGRect(x: 195, y: 670, width: 200, height: 200))
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
        passwordLabel.textColor = .white
        view.addSubview(passwordLabel)
        
        let emailTextField = UITextField(frame: CGRect(x: 35, y: 430, width: 350, height: 40))
        emailTextField.placeholder = "  Введите свою почту"
        emailTextField.backgroundColor = .white
        emailTextField.layer.cornerRadius = 10
        view.addSubview(emailTextField)
        
        let passwordTextField = UITextField(frame: CGRect(x: 35, y: 510, width: 350, height: 40))
        passwordTextField.placeholder = "  Введите пароль"
        passwordTextField.backgroundColor = .white
        passwordTextField.layer.cornerRadius = 10
        view.addSubview(passwordTextField)
        
        let loginButton = UIButton(frame: CGRect(x: 60, y: 750, width: 300, height: 50))
        loginButton.backgroundColor = .systemGreen
        loginButton.setTitle("Войти", for: .normal)
        loginButton.layer.cornerRadius = 20
        loginButton.addTarget(self, action: #selector(birthdayViewControllerShow), for: .touchUpInside)
        view.addSubview(loginButton)
        
        
    }
    
    @objc func birthdayViewControllerShow(sender: UIButton!) {
        let viewController = BirthdayViewController(nibName: nil, bundle: nil)
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.modalPresentationStyle = .fullScreen
        navigationController.navigationBar.barTintColor = .black
        present(navigationController, animated: true, completion: nil)
       }

}

