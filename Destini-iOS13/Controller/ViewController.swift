

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyText: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choicePressed(_ sender: UIButton) {
        storyBrain.updateStoryPosition(choiceChosen: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        let currentStory = storyBrain.getStory()
        storyText.text = currentStory.title
        choice1Button.setTitle(currentStory.choice1, for: .normal)
        choice2Button.setTitle(currentStory.choice2, for: .normal)
    }
}

