//
//  ConfirmationViewController.swift
//  Pizza
//
//  Created by Juan Esteban Diaz on 19/09/17.
//  Copyright © 2017 Juan Esteban Diaz. All rights reserved.
//

import UIKit

class ConfirmationViewController: UIViewController {

    var sizePizza : String = "";
    var typeDough : String = "";
    var typeCheese : String = "";
    var ingredients : [String] = [] ;
    
    @IBOutlet weak var sizePizzaLabel: UILabel!
    @IBOutlet weak var typeDoughLabel: UILabel!
    @IBOutlet weak var typeCheeseLabel: UILabel!
    @IBOutlet weak var ingredientsLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        sizePizzaLabel.text?.append(": "+sizePizza);
        typeDoughLabel.text?.append(": "+typeDough);
        typeCheeseLabel.text?.append(": "+typeCheese);
        for ingredient in ingredients {
            ingredientsLabel.text?.append(ingredient+"\n");
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func CancelAction(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true);
    }
    @IBAction func confirmAction(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true);
        if (sizePizza.isEmpty || typeDough.isEmpty || typeCheese.isEmpty || ingredients.count == 0) {
            showAlert(message: "Hacen falta datos para tu pizza");
        } else{
            showAlert(message: "Pizza Confirmada");
        }
    }
    
    func showAlert(message: String) -> Void {
        let alterController = UIAlertController(title: "Pizza", message: message, preferredStyle: UIAlertControllerStyle.alert);
        alterController.addAction(UIAlertAction(title:"OK", style: UIAlertActionStyle.default, handler: nil));
        self.present(alterController, animated: true, completion: nil);
    }
}
