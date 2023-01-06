//
//  FirstViewController.swift
//  4.01 vazifa
//
//  Created by mac on 04/01/23.
//

import UIKit

class FirstViewController: UIViewController {
    
    let setting: [Setting] = [
        Setting(list: ["Airplane Mode", "Wi-Fi", "cellular", "Personal Hotspot"], listName: " ", img: ["airplane", "wifi",  "cellularbars", "personalhotspot" ]),
        Setting(list: ["Notification", "Sounds & Haptics", "Focus", "Screen Time"], listName: " ", img: ["bell.badge.fill", "speaker.wave.2.fill", "moon.fill", "hourglass"]),
        Setting(list: ["Accessibility","Battery", "Privacy & Security"], listName: " ", img: ["figure.stand", "battery.100", "hand.raised.app"])
    ]
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.register(FirstViewController.self, forCellReuseIdentifier: "cell")
        tableView.register(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: "header")
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension FirstViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return setting[section].listName
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        setting[section].list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.label.text = setting[indexPath.section].list[indexPath.row]
        cell.img1.image = UIImage(named: setting[indexPath.section].img[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SecondViewController()
        vc.name = setting[indexPath.section].list[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
