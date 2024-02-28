//
//  NotesListVC.swift
//  TechExactly-Task
//
//  Created by Tushar Zade on 27/02/24.
//

import UIKit
class NotesTblCell: UITableViewCell{
    
}
class NotesListVC: UIViewController {

    @IBOutlet weak var notesListTblView: UITableView!{
        didSet{
            notesListTblView.delegate = self
            notesListTblView.dataSource = self
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func composeNoteBtnDidTapped(_ sender: UIBarButtonItem) {
        let composeNoteVC = AppStoryboard.main.viewController(viewControllerClass: ComposeNoteVC.self)
        self.navigationController?.pushViewController(composeNoteVC, animated: true)
    }
    

}

extension NotesListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NotesTblCell", for: indexPath) as? NotesTblCell else { return UITableViewCell() }
        cell.selectionStyle = .none
        return cell
    }
}
