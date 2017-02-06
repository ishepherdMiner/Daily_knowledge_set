//
//  SwiftViewController.swift
//  Daily_knowledge_set
//
//  Created by Jason on 28/01/2017.
//  Copyright © 2017 Jason. All rights reserved.
//

import UIKit

class SwiftStringViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        var s = "Swift"
        print(s)
        
        s.replaceSubrange(s.index(s.startIndex,offsetBy:1)...s.index(s.startIndex, offsetBy: 4), with: "WIFT")
        
        s = "Swift"
        print(s)
        print("forI")
        for i in 0..<s.characters.count {
            print(s.characters[s.characters.index(s.startIndex, offsetBy: i)])
        }
        print("forin")
        for c in s.characters {
            print(c)
        }
        print("block")
        s.characters.forEach { (c) in
            print(c)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
