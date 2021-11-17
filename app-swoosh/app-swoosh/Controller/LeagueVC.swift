//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by alp on 11/17/21.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextButton: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }

    
    @IBAction func onNextTapped(_ sender: Any) {
            performSegue(withIdentifier: "skillVCSegue", sender: self)
    }

    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        
        selectLeague(leagueType: "womens")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }

    func selectLeague(leagueType:String){
        player.desiredLeague = leagueType
        nextButton.isEnabled = true
   
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
