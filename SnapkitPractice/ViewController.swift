//
//  ViewController.swift
//  SnapkitPractice
//
//  Created by 전혜성 on 2022/07/28.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let red = UIView()
    let orange = UIView()
    let yellow = UIView()
    let green = UIView()
    let blue = UIView()
    let indigo = UIView()
    let purple = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(red)
        self.view.addSubview(orange)
        self.view.addSubview(yellow)
        self.view.addSubview(green)
        self.view.addSubview(blue)
        self.view.addSubview(indigo)
        self.view.addSubview(purple)
        
        red.backgroundColor = .red
        orange.backgroundColor = .orange
        yellow.backgroundColor = .yellow
        green.backgroundColor = .green
        blue.backgroundColor = .blue
        indigo.backgroundColor = .systemIndigo
        purple.backgroundColor = .purple
        
        red.snp.makeConstraints {
            $0.top.equalTo(view.snp.top) // red의 top이 view의 top과 동일하게
            $0.size.width.height.equalTo(100) // red의 너비와 높이를 100으로 설정
            $0.left.equalTo(view.snp.left) // red의 left를 view의 left와 동일하게
        }
        orange.snp.makeConstraints {
            $0.top.equalTo(red.snp.bottom)
            $0.size.width.height.equalTo(100)
            $0.left.equalTo(view.snp.left)
        }
        yellow.snp.makeConstraints {
            $0.top.equalTo(orange.snp.bottom)
            $0.size.width.height.equalTo(100)
            $0.left.equalTo(view.snp.left)
        }
        green.snp.makeConstraints {
            $0.top.equalTo(yellow.snp.top)
            $0.size.width.height.equalTo(100)
            $0.left.equalTo(yellow.snp.right)
        }
        blue.snp.makeConstraints {
            $0.top.equalTo(green.snp.top)
            $0.size.width.height.equalTo(100)
            $0.left.equalTo(green.snp.right)
        }
        indigo.snp.makeConstraints {
            $0.top.equalTo(blue.snp.bottom)
            $0.size.width.height.equalTo(100)
            $0.left.equalTo(blue.snp.left)
        }
        purple.snp.makeConstraints {
            $0.center.equalTo(view.snp.center)
            $0.size.height.width.equalTo(100)
        }
    }


}

