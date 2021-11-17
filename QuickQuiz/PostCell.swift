//
//  PostCell.swift
//  QuickQuiz
//
//  Created by Pham Hieu on 11/16/21.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionTextView: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerTextView: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
