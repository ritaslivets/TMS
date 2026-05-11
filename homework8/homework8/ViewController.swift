//
//  ViewController.swift
//  homework8
//
//  Created by Slivets Margarita on 10.05.26.
//

import UIKit
import SnapKit
class ViewController: UIViewController {

    private let titleLabell = UILabel()
    private let usernameTextField = UITextField()
    private let usernameContainerView = UIView()
    
    private let passwordtextField = UITextField()
    private let passwordContainerview = UIView()
    
    private let label1 = UILabel()
    private let label2 = UILabel()
    
    
    private let logInButton = UIButton()
    
    private let titleRegistrated = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImageView = UIImageView(frame: view.bounds)
        backgroundImageView.image = UIImage(named: "background")
           backgroundImageView.contentMode = .scaleAspectFill
           backgroundImageView.clipsToBounds = true
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        
        titleLabell.text = "My Home Control"
        titleLabell.textAlignment = .center
        titleLabell.textColor = .white
        titleLabell.font = UIFont.systemFont(ofSize: 32, weight: .bold )
        self.view.addSubview(titleLabell)
        titleLabell.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top) .offset(180)
            make.leading.equalTo(view.snp.leading) .offset(20)
            make.trailing.equalTo(view.snp.trailing) .offset(-20) }
        
        usernameTextField.placeholder = "Username"
        usernameTextField.textColor = .white
        usernameTextField.font = UIFont.systemFont(ofSize: 26)
        self.view.addSubview(usernameTextField)
        usernameTextField.snp.makeConstraints { make in
            make.top.equalTo(titleLabell.snp.bottom).offset(70)
            make.leading.equalTo(view.snp.leading) .offset(40)
            make.trailing.equalTo(view.snp.trailing) .offset(-100)
        }
        usernameContainerView.layer.cornerRadius = 12
        usernameContainerView.layer.borderWidth = 1
        usernameContainerView.backgroundColor = UIColor.white.withAlphaComponent(0.7)
        usernameContainerView.layer.borderColor = UIColor.white.cgColor
        self.view.addSubview(usernameContainerView)
        usernameContainerView.snp.makeConstraints { make in
            make.top.equalTo(usernameTextField.snp.bottom).offset(20)
            make.leading.equalTo(view.snp.leading).offset(40)
            make.trailing.equalTo(view.snp.trailing) .offset(-40)
            make.height.equalTo(50)}
        label1.text = " Please enter username"
        label1.textColor = .lightGray
        label1.font = UIFont.systemFont(ofSize: 16)
        usernameContainerView.addSubview(label1)
        label1.snp.makeConstraints { make in
            make.leading.equalTo(usernameContainerView.snp.leading).offset(16)
            make.top.equalTo(usernameContainerView.snp.top).offset(15)
            make.trailing.equalTo(usernameContainerView.snp.trailing).offset(-25)}
        
    
        
        passwordtextField.placeholder = "Password"
        passwordtextField.textColor = .white
        passwordtextField.font = UIFont.systemFont(ofSize: 26)
        self.view.addSubview(passwordtextField)
        passwordtextField.snp.makeConstraints { make in
            make.top.equalTo(usernameContainerView.snp.bottom) .offset(30)
            make.leading.equalTo(view.snp.leading).offset(40)
            make.trailing.equalTo(view.snp.trailing).offset(-100) }
        
        passwordContainerview.layer.cornerRadius = 12
        passwordContainerview.layer.borderWidth = 1
        passwordContainerview.backgroundColor = UIColor.white.withAlphaComponent(0.7)
        passwordContainerview.layer.borderColor = UIColor.white.cgColor
        self.view.addSubview(passwordContainerview)
        passwordContainerview.snp.makeConstraints { make in
            make.top.equalTo(passwordtextField.snp.bottom).offset(20)
            make.leading.equalTo(view.snp.leading).offset(40)
            make.trailing.equalTo(view.snp.trailing) .offset(-40)
            make.height.equalTo(50)}
        
        
        label2.text = "Please enter password"
        label2.textColor = .lightGray
        label2.font = UIFont.systemFont(ofSize: 16)
        passwordContainerview.addSubview(label2)
        label2.snp.makeConstraints { make in
            make.leading.equalTo(passwordContainerview.snp.leading).offset(16)
            make.top.equalTo(passwordContainerview.snp.top).offset(15)
            make.trailing.equalTo(passwordContainerview.snp.trailing).offset(-25)}
        
        logInButton.setTitle("Log In", for: .normal)
        logInButton.setTitleColor(.black, for: .normal)
        logInButton.layer.cornerRadius = 12
        logInButton.backgroundColor = UIColor.white.withAlphaComponent(0.7)
        self.view.addSubview(logInButton)
        logInButton.snp.makeConstraints { make in
            make.top.equalTo(passwordContainerview.snp.bottom) .offset(50)
            make.leading.equalTo(view.snp.leading).offset(70)
            make.trailing.equalTo(view.snp.trailing).offset(-70)
            make.height.equalTo(50)}
        
        titleRegistrated.text = "Register"
        titleRegistrated.textAlignment = .center
        titleRegistrated.textColor = .white
        titleRegistrated.font = UIFont.systemFont(ofSize: 14)
        self.view.addSubview(titleRegistrated)
        titleRegistrated.snp.makeConstraints { make in
            make.top.equalTo(logInButton.snp.bottom) .offset(80)
            make.leading.equalTo(view.snp.leading) .offset(20)
            make.trailing.equalTo(view.snp.trailing) .offset(-20) }
        }
    }


