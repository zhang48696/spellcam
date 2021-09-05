//
//  ChooseFriendViewController.swift
//  RecogniseCopy
//
//  Created by Soum C.
//  Copyright © 2021 HackathonCoding. All rights reserved.
//

import UIKit

class ChooseFriendViewController: UIViewController {

    let topLabel = UILabel()
    let scrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = foregroundGreen

        // Do any additional setup after loading the view.
        topLabel.text = "FRIEND LIST"
        topLabel.frame = CGRect(x: 0.0, y: 0.0, width: screenWidth, height: screenHeight/4.0)
        topLabel.textAlignment = .center
        topLabel.textColor = backgroundGray
        topLabel.font = UIFont(name: "Inter-Black", size: 28.0)
        view.addSubview(topLabel)
        
        // test sets
        let friend = UIButton()
        friend.frame = CGRect(x: 40.0, y: screenHeight/4.0+20.0, width: screenWidth-80.0, height: 80.0)
        friend.backgroundColor = backgroundGray
        friend.backgroundColor = grayShadow
        self.view.addSubview(friend)
        
        let fLabel = UILabel(frame: friend.bounds)
        fLabel.text = "Kevin"
        fLabel.font = UIFont(name: "Inter-Regular", size: 30.0)
        fLabel.textAlignment = .center
        fLabel.textColor = foregroundGreen
        friend.addSubview(fLabel)
        friend.addTarget(self, action: #selector(displayFriend), for: .touchUpInside)
        
        let button = UIButton()
        button.frame = CGRect(x: 40.0, y: screenHeight-140.0, width: screenWidth-80.0, height: 80.0)
        button.backgroundColor = backgroundGray
        let shadow = UIView(frame: CGRect(x: 40.0+10.0, y: screenHeight-140.0+10.0, width: screenWidth-80.0, height: 80.0))
        shadow.backgroundColor = grayShadow
        self.view.addSubview(shadow)
        self.view.addSubview(button)
        
        let tryLabel = UILabel(frame: button.bounds)
        tryLabel.text = "BACK"
        tryLabel.font = UIFont(name: "Inter-Regular", size: 30.0)
        tryLabel.textAlignment = .center
        tryLabel.textColor = foregroundGreen
        button.addSubview(tryLabel)
        button.addTarget(self, action: #selector(displayFriend), for: .touchUpInside)
        
    }
    
    @objc func displayFriend() {
        let tr = FriendViewController()
        tr.modalPresentationStyle = .fullScreen
        present(tr, animated: true, completion: nil)
    }
    
    @objc func co() {
        let tr = SetViewController()
        tr.modalPresentationStyle = .fullScreen
        present(tr, animated: true, completion: nil)
    }
    
    @objc func goTo(_ sender: UIButton) {
        print(sender.tag)
        currentSet = availableSets[sender.tag]
        
        let vc = LearnViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
        
    }

}
