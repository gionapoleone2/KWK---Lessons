//
//  Volunteer.swift
//  FinalProject
//
//  Created by Maya on 7/30/20.
//  Copyright © 2020 gwc. All rights reserved.
//

import UIKit

class Volunteer: UIViewController {

    @IBAction func Vol1(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://www.ccny.cuny.edu/premed/volunteer-opportunities" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func Vol2(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://www.nyp.org/brooklyn/volunteer-opportunities/volunteer-programs" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func Vol3(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://www.mountsinai.org/locations/mount-sinai/about/volunteer/student-research" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func Vol4(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://cas.nyu.edu/content/nyu-as/cas/prehealth/extracurricular-involvement/clinical-experience.html" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func Vol5(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://www.hss.edu/volunteer-in-new-york-city.asp" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
