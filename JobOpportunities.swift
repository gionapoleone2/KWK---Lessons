//
//  JobOpportunities.swift
//  FinalProject
//
//  Created by Maya on 7/30/20.
//  Copyright © 2020 gwc. All rights reserved.
//

import UIKit

class JobOpportunities: UIViewController {

    @IBAction func Job1(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://www.ziprecruiter.com/c/PRIDE-Healthcare/Job/Medical-Assistant-13-week-assignment/-in-New-York,NY?jid=09d24893b585faa1" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func Job2(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://www.indeed.com/jobs?q=Office+Assistant+Company%3A%22northwell+Health%22" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func Job3(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://www.glassdoor.com/job-listing/medical-assistant-garden-ob-gyn-JV_IC1132348_KO0,17_KE18,31.htm?jl=3440522201" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func Job4(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://greater-ky.hercjobs.org/jobs/13761045" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func Job5(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://www.linkedin.com/jobs/view/medical-assistant-at-manhattan-cardiovascular-associates-1875865152" )! as URL, options: [:], completionHandler: nil)
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
