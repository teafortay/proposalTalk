//
//  NewViewController.swift
//  X-ray Analysis
//
//  Created by Taylor Shaw on 11/25/20.
//

import UIKit

class NewViewController: UIViewController {
    
    @IBAction func signOut(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func home1(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
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
