//
//  NotesListVC.swift
//  TechExactly-Task
//
//  Created by Tushar Zade on 27/02/24.
//

import UIKit
class NotesTblCell: UITableViewCell{
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    let dateFormatter : DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter
    }()
    
    var note: NotesModel?{
        didSet{
            if let note {
                self.lblTitle.text = note.note.html2String
                self.lblDescription.text = dateFormatter.string(from: note.created)
            }
        }
    }
    
}
class NotesListVC: UIViewController {

    @IBOutlet weak var notesListTblView: UITableView!{
        didSet{
            notesListTblView.delegate = self
            notesListTblView.dataSource = self
        }
    }
    
    private let manager: NotesManager = NotesManager()
    var notes: [NotesModel] = []{
        didSet{
            self.notesListTblView.reloadData()
            if notes.count == 0 {
                self.notesListTblView.setEmptyMessage("No Notes Available")
            } else {
                self.notesListTblView.restore()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getNotes()
        print("Documents Directory: ", FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last ?? "Not Found!")
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func composeNoteBtnDidTapped(_ sender: UIBarButtonItem) {
        let composeNoteVC = AppStoryboard.main.viewController(viewControllerClass: ComposeNoteVC.self)
        composeNoteVC.onCreate = {
            self.getNotes()
        }
        self.navigationController?.pushViewController(composeNoteVC, animated: true)
    }
    
    func getNotes(){
        self.notes = manager.fetchNotes() ?? []
    }

}

extension NotesListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NotesTblCell", for: indexPath) as? NotesTblCell else { return UITableViewCell() }
        cell.selectionStyle = .none
        cell.note = notes[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let composeNoteVC = AppStoryboard.main.viewController(viewControllerClass: ComposeNoteVC.self)
        composeNoteVC.noteData = notes[indexPath.row]
        composeNoteVC.onCreate = {
            self.getNotes()
        }
        self.navigationController?.pushViewController(composeNoteVC, animated: true)
    }
    

    

    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { _, _, complete in
            self.deleteAlert(title: "Delete?", message: "Are you sure you want delete this note?") { success in
                if self.manager.deleteProduct(id: self.notes[indexPath.row].id) {
                    self.notes.remove(at: indexPath.row)
                }
            }
            complete(true)
        }
        
        deleteAction.backgroundColor = .red
        let configuration = UISwipeActionsConfiguration(actions: [deleteAction])
        configuration.performsFirstActionWithFullSwipe = true
        return configuration
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
}
