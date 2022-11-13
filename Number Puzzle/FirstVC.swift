//
//  FirstVC.swift
//  Number Puzzle
//
//  Created by MacBook Pro on 07/11/22.
//

import UIKit
class FirstVC: UIViewController {
    @IBOutlet weak var movescounter: UILabel!
    @IBOutlet var btns: [UIButton]!
    @IBOutlet weak var restartbtn: UIButton!
    var arr: [Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
    var arr1:[Int] = []
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        movescounter.text = "\(count)"
        setBtn()
    }
    func setBtn() {
        btns.last?.backgroundColor = .clear
        btns.last?.setTitle(nil, for: .normal)
        arr = arr.shuffled()
        print(arr)
        for i in 0...14 {
            btns[i].setTitle("\(arr[i])", for: .normal)
            btns[i].backgroundColor = .black
        }
    }
    @IBAction func btnsTapped(_ sender: UIButton) {
        arr1 = []
        for i in btns {
            arr1.append(i.tag)
            if i.currentTitle == nil {
                if arr1.count-1 == sender.tag - 1 ||  arr1.count-1 == sender.tag + 1 || arr1.count-1 == sender.tag - 4 || arr1.count-1 == sender.tag + 4 {
                    count += 1
                    movescounter.text = "\(count)"
                    i.setTitle(sender.currentTitle, for: .normal)
                    i.backgroundColor = .black
                    sender.backgroundColor = .clear
                    sender.setTitle(nil, for: .normal)
                }
            }
        }
    }
    @IBAction func restartTapped(_ sender: Any) {
        arr = arr.shuffled()
        setBtn()
    }
}
