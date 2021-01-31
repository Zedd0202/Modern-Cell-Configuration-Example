//
//  ViewController.swift
//  ModernCellConfiguration
//
//  Created by Zedd on 2021/01/31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let headerFooterViewReuseIdentifier: String = #function
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UITableViewHeaderFooterView.self,
                                forHeaderFooterViewReuseIdentifier: self.headerFooterViewReuseIdentifier)
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - UITableViewDelegate, UITableViewDatasource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: self.headerFooterViewReuseIdentifier)
        var content = view?.defaultContentConfiguration()
        content?.text = "\(section)번째 Header"
        view?.contentConfiguration = content
        return view
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: self.headerFooterViewReuseIdentifier)
        var content = view?.defaultContentConfiguration()
        content?.text = "\(section)번째 Footer"
        view?.contentConfiguration = content
        return view
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = "안녕"
        cell.contentConfiguration = content
        return cell
    }
}

