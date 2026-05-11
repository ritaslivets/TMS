//
//  ViewController.swift
//  homework8-2экран
//
//  Created by Slivets Margarita on 11.05.26.
//

import UIKit
import SnapKit
class ViewController: UIViewController {

    
    private let titleLabel = UILabel()
    private let titleLabel2 = UILabel()
    
    private let titleLabel3 = UILabel()
    private let segmentedView = UISegmentedControl()
    
    private let titleLabel4 = UILabel()
    private let segmentedView2 = UISegmentedControl()
    
    private let titleLabel5 = UILabel()
    private let segmentedView3 = UISegmentedControl()
    
    
    private let titleTemperature = UILabel()
    private let temperatureSlider = UISlider()
    private let temperatureLabel = UILabel()
    
    private let alarmButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImageView = UIImageView(frame: view.bounds)
        backgroundImageView.image = UIImage(named: "Image")
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.clipsToBounds =  true
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        
        titleLabel.text = "Welcome, User12314"
        titleLabel.textAlignment = .center
        titleLabel.textColor = .lightGray
        titleLabel.font = UIFont.systemFont(ofSize: 36, weight: .bold)
        self.view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(90)
            make.leading.equalTo(view.snp.leading) .offset(20)
            make.trailing.equalTo(view.snp.trailing).inset(20) }
        
        titleLabel2.text = "Appartment control page"
        titleLabel2.textAlignment = .center
        titleLabel2.textColor = .lightGray
        titleLabel2.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        self.view.addSubview(titleLabel2)
        titleLabel2.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom) .offset(30)
            make.leading.equalTo(view.snp.leading).offset(20)
            make.trailing.equalTo(view.snp.trailing).inset(30)}
        
        let imageView = UIImageView( image : UIImage(named: "image1"))
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.equalTo(titleLabel2.snp.bottom).offset(10)
            make.leading.equalTo(view.snp.leading).offset(20)
            make.trailing.equalTo(view.snp.trailing).inset(300)
            make.width.height.equalTo(30) }
            
            titleLabel3.text = "Lights"
            titleLabel3.textColor = .lightGray
            titleLabel3.font = UIFont.systemFont(ofSize: 20)
            self.view.addSubview(titleLabel3)
            titleLabel3.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(60)
            make.leading.equalTo(view.snp.leading).offset(40) }
            
        segmentedView.insertSegment(withTitle: "On", at: 0, animated: false)
        segmentedView.insertSegment(withTitle: "Off", at: 1, animated: false)
        self.view.addSubview(segmentedView)
        segmentedView.snp.makeConstraints { make in
            make.top.equalTo(titleLabel3.snp.bottom).offset(10)
            make.leading.equalTo(view.snp.leading).offset(40)
            make.trailing.equalTo(view.snp.trailing).inset(70) }
        
        titleLabel4.text = "Door"
        titleLabel4.textColor = .lightGray
        titleLabel4.font = UIFont.systemFont(ofSize: 20)
        self.view.addSubview(titleLabel4)
        titleLabel4.snp.makeConstraints { make in
        make.top.equalTo(segmentedView.snp.bottom).offset(30)
        make.leading.equalTo(view.snp.leading).offset(40) }
        
        segmentedView2.insertSegment(withTitle: "Lock", at: 0, animated: false)
        segmentedView2.insertSegment(withTitle: "Unlock", at: 1, animated: false)
        self.view.addSubview(segmentedView2)
        segmentedView2.snp.makeConstraints { make in
            make.top.equalTo(titleLabel4.snp.bottom).offset(10)
            make.leading.equalTo(view.snp.leading).offset(40)
            make.trailing.equalTo(view.snp.trailing).inset(70) }
        
        titleLabel5.text = "A/C"
        titleLabel5.textColor = .lightGray
        titleLabel5.font = UIFont.systemFont(ofSize: 20)
        self.view.addSubview(titleLabel5)
        titleLabel5.snp.makeConstraints { make in
        make.top.equalTo(segmentedView2.snp.bottom).offset(30)
        make.leading.equalTo(view.snp.leading).offset(40) }
        
        segmentedView3.insertSegment(withTitle: "Auto", at: 0, animated: false)
        segmentedView3.insertSegment(withTitle: "On", at: 1, animated: false)
        segmentedView3.insertSegment(withTitle: "Off", at: 2, animated: false)
        self.view.addSubview(segmentedView3)
        segmentedView3.snp.makeConstraints { make in
            make.top.equalTo(titleLabel5.snp.bottom).offset(10)
            make.leading.equalTo(view.snp.leading).offset(40)
            make.trailing.equalTo(view.snp.trailing).inset(70) }
        
        titleTemperature.text = "Temperature"
        titleTemperature.textColor = .lightGray
        titleTemperature.font = UIFont.systemFont(ofSize: 20)
        self.view.addSubview(titleTemperature)
        titleTemperature.snp.makeConstraints { make in
        make.top.equalTo(segmentedView3.snp.bottom).offset(30)
        make.leading.equalTo(view.snp.leading).offset(40) }
        
        setupTemperatureSlider()
        
        alarmButton.setTitle("Alarm", for: .normal)
        alarmButton.tintColor = .white
        alarmButton.backgroundColor = .systemRed
        alarmButton.layer.cornerRadius = 12
        alarmButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        self.view.addSubview(alarmButton)
        alarmButton.snp.makeConstraints { make in
            make.top.equalTo(temperatureLabel.snp.bottom).offset(20)
            make.leading.equalTo(view.snp.leading).offset(40)
            make.trailing.equalTo(view.snp.trailing).inset(40)}
    
    }
    private func setupTemperatureSlider() {
        temperatureSlider.minimumValue = 16
        temperatureSlider.maximumValue = 30
        temperatureSlider.value = 21
        temperatureSlider.minimumTrackTintColor = .systemBlue
        temperatureSlider.maximumTrackTintColor = .lightGray
        view.addSubview(temperatureSlider)
        temperatureSlider.snp.makeConstraints { make in
            make.top.equalTo(titleTemperature.snp.bottom).offset(10)
            make.leading.equalTo(view.snp.leading).offset(20)
            make.trailing.equalTo(view.snp.trailing).inset(30)
            make.height.equalTo(30) }
        
        temperatureLabel.text = "21 °C"
        temperatureLabel.font = UIFont.systemFont(ofSize: 44, weight: .thin)
        temperatureLabel.textAlignment = .center
        view.addSubview(temperatureLabel)
        temperatureLabel.snp.makeConstraints { make in
            make.top.equalTo(temperatureSlider.snp.bottom).offset(20)
            make.centerX.equalToSuperview() }
        temperatureSlider.addAction(UIAction { [weak self] _ in
            guard let self = self else { return }
            let value = Int(self.temperatureSlider.value)
            self.temperatureLabel.text = "\(value) °C" }, for : .valueChanged)
            
        
    }
}

