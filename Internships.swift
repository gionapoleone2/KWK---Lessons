//
//  Internships.swift
//  FinalProject
//
//  Created by Maya on 7/30/20.
//  Copyright © 2020 gwc. All rights reserved.
//

import UIKit

class Internships: UIViewController {

    @IBAction func Int1(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://www.hofstra.edu/pdf/studentaffairs/advise/advprh/advprh_intern_dom08.pdf" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func Int2(_ sender: UIButton) { UIApplication.shared.open(URL(string:"http://www.columbia.edu/cu/biology/ug/intern.html" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func Int3(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://hpa.princeton.edu/news/7-summer-internship-programs-pre-med-students-cohen-new-york-ny" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func Int4(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://www.binghamton.edu/pre-health/resources/docs/prehealth_internships_2019.pdf" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func Int5(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://www.nyit.edu/arts_and_sciences/internships_and_research_opportunities" )! as URL, options: [:], completionHandler: nil)
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
