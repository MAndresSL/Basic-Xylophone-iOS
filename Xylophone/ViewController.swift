import UIKit
import AVFoundation;

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    let soundFiles = ["A",
                      "B",
                      "C",
                      "D",
                      "E",
                      "F"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundTitle: sender.currentTitle!)
    }
    
    func playSound(soundTitle: String) {
        
        if(soundFiles.contains(soundTitle) == false){
            return;
        }
        
        let url = Bundle.main.url(forResource: soundTitle, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!);
        player.play();
    }
    
}

