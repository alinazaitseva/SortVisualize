//
//  VisualizeSortViewController.swift
//  Pocahontas
//
//  Created by Alina Zaitseva on 5/8/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import UIKit

class VisualizeSortViewController: UIViewController {

    @IBOutlet weak var visualizeTableView: UITableView!
    public var dataEntity: AlgorithmsSourceEntity?
    var sortModel: SortMethodsProtocol!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func nextActionButton(_ sender: UIButton) {
        let actions = sortModel.getSortAlgorithm()
        if !actions.isFinishAction {
            let beginPath = IndexPath(row: actions.at, section: 0)
            let finishPath = IndexPath(row: actions.to, section: 0)
            visualizeTableView.beginUpdates()
            visualizeTableView.moveRow(at: beginPath, to: finishPath)
            visualizeTableView.moveRow(at: finishPath, to: beginPath)
            visualizeTableView.endUpdates()
        }
    }
}
extension VisualizeSortViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VisualizeCell", for: indexPath)
        cell.textLabel?.text = String(sortModel.arrayForSort[indexPath.row])
        cell.backgroundColor = UIColor.blue
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sortModel.count
    }
}
