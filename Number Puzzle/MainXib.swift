//
//  MainXib.swift
//  Number Puzzle
//
//  Created by MacBook Pro on 07/11/22.
//

import UIKit

class MainXib: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func startBtnTapped(_ sender: UIButton) {
        let vc = FirstVC(nibName: "FirstVC", bundle: nil)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
        
    }
    
    

}
