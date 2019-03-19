//
//  ListTeamViewController.swift
//  TableViewExample
//
//  Created by Jorge Luis Menco on 3/12/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import UIKit
import TableViewExampleCore

class ListTeamViewController: BaseViewController {
    
    @IBOutlet weak var teamTableView: UITableView!
    private var listTeams : [Team] = [Team]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.bind(withView: self)
        self.teamTableView.dataSource = self
        self.teamTableView.delegate = self
        
        guard let teamListPresenter = self.presenter as? TeamPresenterProtocol else {
            return
        }
        teamListPresenter.getTeams()
    }
    
    deinit {
        self.presenter?.unBind()
    }
}

extension ListTeamViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listTeams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "teamCell", for: indexPath) as? TeamTableViewCell else {
            return UITableViewCell()
        }
        
        cell.setTeam(team: listTeams[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "detailTeamViewController") as? DetailTeamViewController else {return}
        detailVC.idTeam = self.listTeams[indexPath.row].id
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
}

extension ListTeamViewController : ListTeamsView{
    func goToDetailInfoTeam(idTeam: String) {
        print("")
    }
    
    func getAllTeams(data: [Team]) {
        listTeams = data
        teamTableView.reloadData()
        
    }
}
