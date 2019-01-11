//
//  ViewController.swift
//  ArrayOfArrays
//
//  Created by Mark Meretzky on 1/10/19.
//  Copyright © 2019 New York University School of Professional Studies. All rights reserved.
//

import UIKit;

class ViewController: UIViewController {
    
    //An array of arrays of Strings.
    //Could change String to Character, because each String is exactly one character.

    let rows: [[String]] = [
        ["X", " ", " "],
        [" ", "O", "O"],
        [" ", " ", "X"]
    ];

    override func viewDidLoad() {
        super.viewDidLoad();

        // Do any additional setup after loading the view, typically from a nib.
        let labelSize: CGSize = CGSize(width: 100, height: 100);
        
        //Add these numbers to the (x, y) coordinates of each UILabel
        //to center the tic-tac-toe board in the big white view.

        let xOffset: CGFloat = (view.frame.width  - CGFloat(rows[0].count) * labelSize.width)  / 2;
        let yOffset: CGFloat = (view.frame.height - CGFloat(rows.count)    * labelSize.height) / 2;
        
        for (rowNumber, row) in rows.enumerated() {
            let y: CGFloat = CGFloat(rowNumber) * labelSize.height;
            
            for (columnNumber, col) in row.enumerated() {
                let x: CGFloat = CGFloat(columnNumber) * labelSize.width;
                
                let origin: CGPoint = CGPoint(x: xOffset + x, y: yOffset + y);
                let frame: CGRect = CGRect(origin: origin, size: labelSize);
                let label: UILabel = UILabel(frame: frame);

                label.layer.borderWidth = 0.25;
                label.backgroundColor = .yellow;
                label.textAlignment = .center;
                label.font = .systemFont(ofSize: 36);
                label.text = col;
                view.addSubview(label);
            }
        }
    }

}

