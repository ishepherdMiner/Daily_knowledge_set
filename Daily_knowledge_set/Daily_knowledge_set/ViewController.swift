//
//  ViewController.swift
//  Daily_knowledge_set
//
//  Created by Jason on 08/12/2016.
//  Copyright © 2016 Jason. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    open let sections = 1
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ComConfig.shared.dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "daily_knowledge_set")
        cell.textLabel?.text = ComConfig.shared.dataList[indexPath.row]["name"]
        return cell
    }
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // http://stackoverflow.com/questions/24030814/swift-language-nsclassfromstring/32265287#32265287        
        let ctrl = (ComConfig.shared.dataList[indexPath.row]["ctrl"])! as String
        let vc = (NSClassFromString(ctrl) as? UIViewController.Type)?.init()
        vc?.title = (ComConfig.shared.dataList[indexPath.row]["name"])
        navigationController?.pushViewController(vc!, animated: true)
    }
}
