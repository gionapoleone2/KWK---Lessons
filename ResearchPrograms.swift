//
//  ResearchPrograms.swift
//  FinalProject
//
//  Created by Maya on 7/30/20.
//  Copyright © 2020 gwc. All rights reserved.
//

import UIKit

class ResearchPrograms: UIViewController {

    @IBAction func RP1(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://www.einstein.yu.edu/education/phd/the-summer-undergrad-research-program.aspx" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func RP2(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://www.sloankettering.edu/gerstner/welcome" )! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func RP3(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://www.mskcc.org/hcp-education-training/medical-students/summer-fellowship" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func RP4(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://icahn.mssm.edu/education/non-degree/surp" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func RP5(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://med.nyu.edu/research/sackler-institute-graduate-biomedical-sciences/summer-undergraduate-research-program" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func RP6(_ sender: UIButton) {UIApplication.shared.open(URL(string:"https://mdphd.weill.cornell.edu/summer-program" )! as URL, options: [:], completionHandler: nil)
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
