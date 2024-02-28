//
//  ViewController.swift
//  TechExactly-Task
//
//  Created by Tushar Zade on 27/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    let editorView = RichEditorView()
    var prevText: String!
    let toolbar = RichEditorToolbar()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        editorView.html = "What I'll usually do for focus and unfocus is similar to what Google Docs does. The insert link functionality is similar to Reddit's except I use a UIAlertController. There are some added and altered functionality like running your custom JS; you will just have to learn what goes on with this package, but it's a quick learn. <b>Good luck!</b> If you have any issues, Yoom will help out, so long as those issues are opened in this repo. Credits still go out to cjwirth and C. Bess" // setting the html must come AFTER the subview has been added. I'm not sure why, though. This could also not be the case after I ported this over to WKWebView
    }


}

extension ViewController: RichEditorDelegate {
    func richEditor(_ editor: RichEditorView, contentDidChange content: String) {
        // This is meant to act as a text cap
        if content.count > 40000 {
            editor.html = prevText
        } else {
            prevText = content
        }
    }
}

extension ViewController: RichEditorToolbarDelegate {
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
