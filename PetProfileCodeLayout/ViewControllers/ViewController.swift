//
//  ViewController.swift
//  PetProfileCodeLayout
//
//  Created by Armen on 07.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Public Properties
    let mainView = UIView()
    let sendMessageButton = UIButton()
    let profileButton = UIButton()
    let stackView = UIStackView()
    let ava = UIImageView()
    let dog = UIImageView()
    let onlineIcon = UIImageView()
    let genderIcon = UIImageView()
    let dogNameLabel = UILabel()
    let labelOfTime = UILabel()
    let starImage = UIImageView()
    let labelAboutPet = UILabel()
    let informationOfPet = UILabel()
    
    // MARK: - View lifecycle
    override func viewDidLoad() {
        setupLayout()
        view.backgroundColor = #colorLiteral(red: 0.1283961654, green: 0.1283961654, blue: 0.1283961654, alpha: 1)
    }
    // MARK: - Private methods
    
    private func setupLayout() {
        configureMainView()
        configureSendMessageButton()
        configureProfileButton()
        configureStackView()
        configureImageView()
        configureDogView()
        configureOnlineIcon()
        configureGenderIcon()
        configureDogNameLabel()
        configureLabelOfTime()
        configureStarImage()
        configureLabelAboutPet()
        configureInformationOfPet()
    }
    
    // Main View
    private func configureMainView() {
        view.addSubview(mainView)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.backgroundColor = .white
        mainView.layer.cornerRadius = 15
    }
    
    // Send Message Icon
    private func configureSendMessageButton() {
        view.addSubview(sendMessageButton)
        sendMessageButton.translatesAutoresizingMaskIntoConstraints = false
        sendMessageButton.backgroundColor = .tintColor
        sendMessageButton.layer.cornerRadius = 32
        sendMessageButton.setTitle("Написать сообщение", for: .normal)
        
        NSLayoutConstraint.activate([
            sendMessageButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sendMessageButton.heightAnchor.constraint(equalToConstant: 60),
            sendMessageButton.topAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 20),
            sendMessageButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 19)
        ])
    }
    
    // Profile Button
    private func configureProfileButton() {
        view.addSubview(profileButton)
        profileButton.translatesAutoresizingMaskIntoConstraints = false
        profileButton.setTitle("Перейти в профиль", for: .normal)
        profileButton.setTitleColor(.gray, for: .normal)
        
        NSLayoutConstraint.activate([
            profileButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileButton.topAnchor.constraint(equalTo: sendMessageButton.bottomAnchor, constant: 20)
        ])
    }
    
    // Stack View
    private func configureStackView() {
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        stackView.addArrangedSubview(mainView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 246),
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 166),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10)
        ])
    }
    
    // Avatar Image
    private func configureImageView() {
        ava.image = UIImage(named: "ava")
        ava.contentMode = .scaleAspectFit
        ava.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(ava)
        
        ava.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20).isActive = true
        ava.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20).isActive = true
    }
    
    // Dog Image
    private func configureDogView() {
        dog.image = UIImage(named: "dog")
        dog.contentMode = .scaleAspectFit
        dog.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(dog)
        
        dog.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30).isActive = true
        dog.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 50).isActive = true
    }
    
    // Online Icon
    private func configureOnlineIcon() {
        onlineIcon.image = UIImage(named: "Online")
        onlineIcon.contentMode = .scaleAspectFit
        onlineIcon.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(onlineIcon)
        
        onlineIcon.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 70).isActive = true
        onlineIcon.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 85).isActive = true
    }
    
    // Gender Icon
    private func configureGenderIcon() {
        genderIcon.image = UIImage(named: "icon")
        genderIcon.contentMode = .scaleAspectFit
        genderIcon.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(genderIcon)
        
        genderIcon.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30).isActive = true
        genderIcon.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 180).isActive = true
    }
    
    // Dog Name Label
    private func configureDogNameLabel() {
        dogNameLabel.text = "Бима"
        dogNameLabel.contentMode = .scaleToFill
        dogNameLabel.textColor = .black
        dogNameLabel.font = UIFont.boldSystemFont(ofSize: 25)
        dogNameLabel.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(dogNameLabel)
        
        dogNameLabel.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30).isActive = true
        dogNameLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 115).isActive = true
    }
    
    // Time Label
    private func configureLabelOfTime() {
        labelOfTime.text = "На прогулке еще 30 минут"
        labelOfTime.contentMode = .scaleToFill
        labelOfTime.textColor = .gray
        labelOfTime.font = .systemFont(ofSize: 14)
        labelOfTime.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(labelOfTime)
        
        labelOfTime.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 70).isActive = true
        labelOfTime.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 115).isActive = true
    }
    
    // Star Image
    private func configureStarImage() {
        starImage.image = UIImage(named: "star")
        starImage.contentMode = .scaleAspectFit
        starImage.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(starImage)
        
        starImage.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30).isActive = true
        starImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 320).isActive = true
    }
    
    // Label About Pet
    private func configureLabelAboutPet() {
        labelAboutPet.text = "О питомце"
        labelAboutPet.contentMode = .scaleToFill
        labelAboutPet.textColor = .black
        labelAboutPet.font = .systemFont(ofSize: 15)
        labelAboutPet.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(labelAboutPet)
        
        labelAboutPet.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 100).isActive = true
        labelAboutPet.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20).isActive = true
    }
    
    // Pet Information
    private func configureInformationOfPet() {
        informationOfPet.text = "Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона."
        informationOfPet.numberOfLines = 0
        informationOfPet.lineBreakMode = .byWordWrapping
        informationOfPet.textColor = .gray
        informationOfPet.font = .systemFont(ofSize: 14)
        informationOfPet.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(informationOfPet)
        
        informationOfPet.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 80).isActive = true
        informationOfPet.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20).isActive = true
        informationOfPet.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20).isActive = true
        informationOfPet.bottomAnchor.constraint(equalTo: mainView.bottomAnchor).isActive = true
    }
}

