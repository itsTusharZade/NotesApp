//
//  ComposeNoteVC.swift
//  TechExactly-Task
//
//  Created by Tushar Zade on 27/02/24.
//

import UIKit

class ComposeNoteVC: UIViewController {
    
    @IBOutlet weak var doneItem: UIBarButtonItem!
    let editorView = RichEditorView()
    var prevText: String!
    let toolbar = RichEditorToolbar()
    
    var timer: Timer?
    var isTyping: Bool = false
    private let manager: NotesManager = NotesManager()
    var noteData: NotesModel?
    var onCreate: (() -> Void)? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationItem.rightBarButtonItems = []
        doneItem.isHidden = true
        startObservingTyping()
        setupEditor()
        
        
    }
    
    @IBAction func doneItemDidTapped(_ sender: UIBarButtonItem) {
        saveNote()
        self.view.endEditing(true)
    }
    

    func setupEditor(){
        additionalSafeAreaInsets = .init(top: 6, left: 12, bottom: 0, right: 12)
        editorView.translatesAutoresizingMaskIntoConstraints = false
        editorView.delegate = self
        editorView.editingEnabled = true
        editorView.placeholder = "Press to start typing"
        toolbar.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: 44)
        toolbar.options = RichEditorDefaultOption.all
        toolbar.editor = editorView
        toolbar.delegate = self
        editorView.inputAccessoryView = toolbar
        view.addSubview(editorView)
        let sa = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            editorView.topAnchor.constraint(equalTo: sa.topAnchor),
            editorView.leadingAnchor.constraint(equalTo: sa.leadingAnchor),
            editorView.trailingAnchor.constraint(equalTo: sa.trailingAnchor),
            editorView.bottomAnchor.constraint(equalTo: sa.bottomAnchor)
        ])
        if let noteData {
            editorView.html = noteData.note
        }
    }
    
    func saveNote(){
        if let noteData {
            let note = NotesModel(_id: noteData.id, _title: noteData.title , _note: prevText, _created: noteData.created, _modified: Date())
            if manager.updateNote(product: note) {
                print("Note updated successfully")
            }
        } else {
            if !prevText.isEmpty{
                let title = prevText.components(separatedBy: ".")
                let note = NotesModel(_id: UUID(), _title: title.first ?? "", _note: prevText, _created: Date(), _modified: Date())
                manager.createNote(record: note) { note in
                    self.noteData = note
                }
            }
        }
        onCreate?()
    }
    
    func startObservingTyping() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidHide), name: UIResponder.keyboardDidHideNotification, object: nil)
    }
    
    @objc func keyboardDidShow() {
        isTyping = true
        doneItem.isHidden = false
        saveNote()
//        self.navigationItem.rightBarButtonItems = [doneItem]
    }
    
    @objc func keyboardDidHide() {
        isTyping = false
        doneItem.isHidden = true
        saveNote()
    }
    
    func resetTimer() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(timerExpired), userInfo: nil, repeats: false)
    }
    
    @objc func timerExpired() {
        if !isTyping {
            
            print("User is not typing. Performing some action...")
        }
        saveNote()
        print("User is not typing. Performing some action...")
        timer?.invalidate()
    }

}

extension ComposeNoteVC: RichEditorDelegate{
    func richEditor(_ editor: RichEditorView, contentDidChange content: String) {
        isTyping = true
        resetTimer()
        if content.count > 40000 {
            editor.html = prevText
        } else {
            prevText = content
        }
    }
    
    func richEditorLostFocus(_ editor: RichEditorView) {
        print("Rich Editor Lost Focus")
    }
    
    func richEditorTookFocus(_ editor: RichEditorView) {
        doneItem.isHidden = false
    }
}

extension ComposeNoteVC: RichEditorToolbarDelegate {
    func isURLValid(url: String?) -> Bool {
        if(url?.hasPrefix("http://") ?? false || url?.hasPrefix("https://") ?? false) { return true }
        return false
    }

    func richEditorToolbarInsertLink(_ toolbar: RichEditorToolbar) {
        let alertController = UIAlertController(title: "Enter link and text", message: "You can leave the text empty to only show a clickable link", preferredStyle: .alert)
        let confirmAction = UIAlertAction(title: "Insert", style: .default) { (_) in
            var link = alertController.textFields?[0].text
            let text = alertController.textFields?[1].text
            if link?.last != "/" { link = link! + "/" }
            toolbar.editor?.insertLink(href: link!, text: text ?? link!)
            self.editorView.focus()
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
        confirmAction.isEnabled = false
        let linkPH = "Link (required)"
        let txtPH = "Text (Clickable text that redirects to link)"
        toolbar.editor?.hasRangeSelection(handler: { r in
            if r == true {
                alertController.addTextField { (textField) in
                    textField.placeholder = linkPH
                    toolbar.editor?.getSelectedHref(handler: { a in
                        if a?.last != "/" {
                            textField.text = nil
                        } else {
                            if self.isURLValid(url: a) == true {
                                textField.text = a
                            }
                        }
                    })
                    NotificationCenter.default.addObserver(forName: UITextField.textDidChangeNotification, object: textField, queue: OperationQueue.main) { (notification) in
                        if self.isURLValid(url: textField.text) == true {
                            confirmAction.isEnabled = textField.hasText
                        } else {
                            confirmAction.isEnabled = false
                        }
                    }
                }
                alertController.addTextField { (textField) in
                    textField.placeholder = txtPH
                    toolbar.editor?.getSelectedText(handler: { a in
                        textField.text = a
                    })
                }
            } else {
                alertController.addTextField { (textField) in
                    textField.placeholder = linkPH
                    NotificationCenter.default.addObserver(forName: UITextField.textDidChangeNotification, object: textField, queue: OperationQueue.main) { (notification) in
                        if self.isURLValid(url: textField.text) == true {
                            confirmAction.isEnabled = textField.hasText
                        } else {
                            confirmAction.isEnabled = false
                        }
                    }
                }
                alertController.addTextField { (textField) in textField.placeholder = txtPH }
            }
        })
    }
}
