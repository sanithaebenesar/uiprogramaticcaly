//
//  ViewController.swift
//  buttton,textfield,label,switchprogramatically
//
//  Created by CH 002 on 24/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    let button = UIButton()
    let tF = UITextField()
    let label = UILabel()
    let swt = UISwitch()
    let images = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // let button = UIButton()
        button.frame = CGRect(x: 100, y:50, width: 80, height: 80)
        button.setTitle("Button", for: .normal)
        button.backgroundColor = .systemMint
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(buttonAction), for:.touchUpInside)
        view.addSubview(button)
        
        tF.frame = CGRect(x: 100, y:150, width: 180, height: 80)
        tF.layer.borderWidth = 1
        tF.layer.borderColor = UIColor.systemRed.cgColor
        tF.textColor = .systemTeal
        tF.layer.cornerRadius = 5
        view.addSubview(tF)
        
        label.frame = CGRect(x: 100, y:250, width: 180, height: 80)
        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor.systemBlue.cgColor
        label.textColor = .systemIndigo
        label.layer.cornerRadius = 5
        view.addSubview(label)
        
        swt.frame = CGRect(x: 100, y:350, width: 30, height: 30)
        swt.addTarget(self, action: #selector(switchAction), for:.touchUpInside)
        view.addSubview(swt)
        
        images.frame = CGRect(x:100 , y:450, width: 100, height: 100)
        images.image = UIImage(named: "backpak4")
        images.contentMode = .scaleAspectFill
        view.addSubview(images)
        
    }
    @objc func buttonAction() {
        button.backgroundColor = .systemRed
    }
    @objc func switchAction(){
        if swt.isOn == true{
            print("ON")
        }
        else{
            print("OFF")
        }
    }
    
}

