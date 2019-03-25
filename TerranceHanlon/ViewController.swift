//
//  ViewController.swift
//  TerranceHanlon
//
//  Created by Hanlon, Terrance N. on 3/24/19.
//  Copyright © 2019 TerranceNicholas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    struct constants {
        static let aboutMe = "Hello\n"
        + "My Name is Terrance Hanlon \n"
        + "I'm a computer science student at the University of Minnesota."
        + "I love being a developer, learning about software engineering and\n"
        + "computer science in general"
     
        static let dogsProject = " Dogs or DAAS (dogs as a service\n"
            + "Is a simple web app that uses a free API that pulls from a big"
            + "\nrepository of dog images"
            + "It uses angular 5."
            + "\n https://github.com/terrancehanlon/Dogs"
    }

    //MARK: Properties
    
    @IBOutlet weak var projects_dogs: UITextView!
    @IBOutlet weak var aboutMeText: UITextView!
    @IBOutlet weak var hideAboutMe: UIButton!
    @IBOutlet weak var aboutMeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutMeText.text = ""
        aboutMeText.isUserInteractionEnabled = false
        hideAboutMe.isHidden = true
        hideAboutMe.setTitleColor(.red, for: .normal)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: Actions
    
    @IBAction func showAboutMe(_ sender: Any) {
        var i = 0;
        while(i < 20){
            aboutMeText.text += constants.aboutMe
            i += 1
        }
        aboutMeBtn.isHidden = true
        hideAboutMe.isHidden = false
    }
    
    @IBAction func showProjects(_ sender: Any) {
        
    }
    @IBAction func hideAboutMe_func(_ sender: Any) {
        aboutMeText.text = ""
        hideAboutMe.isHidden = true
        aboutMeBtn.isHidden = false;
    }
    
}

