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
//    public var dataSort: AlgorithmsSortEntity?
 
    var insertSort = InsertionSortModel()
    var selectionSort = SelectionSortModel()
    var bubleSort = BubbleSortModel()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    @IBAction func nextActionButton(_ sender: UIButton) {
        let resultOfAction = insertSort.insertionSort()
        if !resultOfAction.isFinishAction {
            let beginPath = IndexPath(row: resultOfAction.at, section: 0)
            let finishPath = IndexPath(row: resultOfAction.to, section: 0)
            visualizeTableView.beginUpdates()
            visualizeTableView.moveRow(at: beginPath, to: finishPath)
            visualizeTableView.endUpdates()
        }
    }
}
extension VisualizeSortViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VisualizeCell", for: indexPath)
        cell.textLabel?.text = String(insertSort.arrayForSort[indexPath.row])
        cell.backgroundColor = UIColor.blue
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return insertSort.arrayForSort.count
    }
}
