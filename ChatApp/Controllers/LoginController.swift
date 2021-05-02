//
//  LoginController.swift
//  ChatApp
//
//  Created by Юлия Караневская on 5/2/21.
//

import UIKit

class LoginController: UIViewController {
    
    let loginPageImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Images.loginPageImage
        return imageView
    }()
    
    let textFieldsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        return view
    }()
    
    let nameTextField: UITextField = {
        let textField = UITextField()
     
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
      
        textField.placeholder = "Name"
        textField.layer.borderWidth = 2
        textField.layer.borderColor = Colors.limeCustomColor?.cgColor
        return textField
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        
        textField.placeholder = "E-mail address"
        textField.layer.borderWidth = 2
        textField.layer.borderColor = Colors.limeCustomColor?.cgColor
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        
        textField.placeholder = "Password"
        textField.layer.borderWidth = 2
        textField.layer.borderColor = Colors.limeCustomColor?.cgColor
        textField.isSecureTextEntry = true
        return textField
    }()
    
    let loginRegisterButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = Colors.greenCustomColor
        button.layer.cornerRadius = 20
        button.setTitle("Register", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
       
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors.limeCustomColor
        
        
        
        setTextFieldsConrainer()
        setNameTextField()
        setEmailTextField()
        setPasswordTextField()
        
        
        setLoginPageImageView()
        
        setLoginRegisterButton()

        
    }
    
    func setLoginPageImageView() {
        view.addSubview(loginPageImageView)
        loginPageImageView.translatesAutoresizingMaskIntoConstraints = false
        
        loginPageImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        loginPageImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        loginPageImageView.bottomAnchor.constraint(equalTo: textFieldsContainerView.topAnchor, constant: -20).isActive = true
        loginPageImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    
    func setTextFieldsConrainer() {
        view.addSubview(textFieldsContainerView)
        textFieldsContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        textFieldsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textFieldsContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        textFieldsContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        textFieldsContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
    }
    
    func setNameTextField() {
        textFieldsContainerView.addSubview(nameTextField)
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        nameTextField.topAnchor.constraint(equalTo: textFieldsContainerView.topAnchor).isActive = true
        nameTextField.leadingAnchor.constraint(equalTo: textFieldsContainerView.leadingAnchor).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo: textFieldsContainerView.trailingAnchor).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setEmailTextField() {
        textFieldsContainerView.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: textFieldsContainerView.leadingAnchor).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: textFieldsContainerView.trailingAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setPasswordTextField() {
        textFieldsContainerView.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: textFieldsContainerView.leadingAnchor).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: textFieldsContainerView.trailingAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setLoginRegisterButton() {
        view.addSubview(loginRegisterButton)
        loginRegisterButton.translatesAutoresizingMaskIntoConstraints = false
        
        loginRegisterButton.topAnchor.constraint(equalTo: textFieldsContainerView.bottomAnchor, constant: 10).isActive = true
        loginRegisterButton.leadingAnchor.constraint(equalTo: textFieldsContainerView.leadingAnchor).isActive = true
        loginRegisterButton.trailingAnchor.constraint(equalTo: textFieldsContainerView.trailingAnchor).isActive = true
        loginRegisterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    
    
    
    
    


}

class CustomTextField: UITextField {

    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect.init(x: 10, y: -10, width: bounds.width, height: bounds.height)
    }

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect.init(x: 10, y: -10, width: bounds.width, height: bounds.height)
    }
}
