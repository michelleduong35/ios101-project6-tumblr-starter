//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Michelle Duong on 3/26/24.
//

import Nuke
import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var captionText: UITextView!
    @IBOutlet weak var postImageView: UIImageView!
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        captionText.text = post.caption.trimHTMLTags()
        
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: postImageView)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
