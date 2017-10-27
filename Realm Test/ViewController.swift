//
//  ViewController.swift
//  Realm Test
//
//  Created by Sanad  on 10/27/17.
//  Copyright © 2017 Sanad Barjawi. All rights reserved.
//

import UIKit
import RealmSwift
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addHuman()
    }

    func addHuman(){
        let mike = Human()
        mike.name = "Mike"
        mike.age = 23
        mike.nationality = "Jordanian"
        
        let realm = try! Realm()
      try! realm.write {
            realm.add(mike)
        print("Added \(mike.name) to Realm")
        }
        
        
    }



}

