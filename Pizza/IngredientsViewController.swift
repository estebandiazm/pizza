//
//  IngredientsViewController.swift
//  Pizza
//
//  Created by Juan Esteban Diaz on 18/09/17.
//  Copyright © 2017 Juan Esteban Diaz. All rights reserved.
//

import UIKit

class IngredientsViewController: UIViewController {
    
    var sizePizza : String = "";
    var typeDough : String = "";
    var typeCheese : String = "";
    var ingredientSelected : [String] = [];
    
    @IBOutlet weak var typeCheeseLabel: UILabel!
    @IBOutlet weak var sizePizzaLabel: UILabel!
    @IBOutlet weak var typeDoughLabel: UILabel!

    
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
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextView = segue.destination as! ConfirmationViewController;
        nextView.sizePizza = self.sizePizza;
        nextView.typeDough = self.typeDough;
        nextView.typeCheese = self.typeCheese;
        nextView.ingredients = self.ingredientSelected;
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func jamoSwitchAction(_ sender: UISwitch) {
        if sender.isOn {
            addIngredient(ingredinet: "jamón", sender: sender);
        } else if (ingredientSelected.contains("jamóm")){
            ingredientSelected.remove(at: ingredientSelected.index(of: "jamón")!);
        }
    }
    

    @IBAction func pepperoniSwitchAction(_ sender: UISwitch) {
        if sender.isOn {
            addIngredient(ingredinet: "pepperoni", sender: sender);
        } else if (ingredientSelected.contains("pepperoni")) {
            ingredientSelected.remove(at: ingredientSelected.index(of: "pepperoni")!);
        }
    }
    
    @IBAction func pavoSwitchAction(_ sender: UISwitch) {
        if sender.isOn {
            addIngredient(ingredinet: "pavo", sender: sender);
        } else if (ingredientSelected.contains("pepperopavoni")) {
            ingredientSelected.remove(at: ingredientSelected.index(of: "pavo")!);
        }
    }
    

    @IBAction func salchichaSwitchAction(_ sender: UISwitch) {
        if sender.isOn {
            addIngredient(ingredinet: "salchicha", sender: sender);
        } else if (ingredientSelected.contains("salchicha")) {
            ingredientSelected.remove(at: ingredientSelected.index(of: "salchicha")!);
        }
    }
    
    @IBAction func aceitunaSwitchAction(_ sender: UISwitch) {
        
        if sender.isOn {
            addIngredient(ingredinet: "aceituna", sender: sender);
        } else if (ingredientSelected.contains("aceituna")) {
            ingredientSelected.remove(at: ingredientSelected.index(of: "aceituna")!);
        }
    }
    
  
    
    @IBAction func cebollaSwitchAction(_ sender: UISwitch) {
        if sender.isOn {
            addIngredient(ingredinet: "cebolla", sender: sender);
        } else if (ingredientSelected.contains("cebolla")) {
            ingredientSelected.remove(at: ingredientSelected.index(of: "cebolla")!);
        }
    }
    
    
    @IBAction func pimientoSwitchAction(_ sender: UISwitch) {
        if sender.isOn {
            addIngredient(ingredinet: "pimiento", sender: sender);
        } else if (ingredientSelected.contains("pimiento")) {
            ingredientSelected.remove(at: ingredientSelected.index(of: "pimiento")!);
        }
    }
    
    @IBAction func pinaSwitchAction(_ sender: UISwitch) {
        if sender.isOn {
            addIngredient(ingredinet: "piña", sender: sender);
        } else if (ingredientSelected.contains("piña")) {
            ingredientSelected.remove(at: ingredientSelected.index(of: "piña")!);
        }
    }
    
    @IBAction func anchoaSwitchAction(_ sender: UISwitch) {
        if sender.isOn {
            addIngredient(ingredinet: "anchoa", sender: sender);
        } else  if (ingredientSelected.contains("anchoa")){
            ingredientSelected.remove(at: ingredientSelected.index(of: "anchoa")!);
        }
    }
    
    func addIngredient(ingredinet: String, sender: UISwitch) -> Void{
        if ingredientSelected.count < 5 {
            ingredientSelected.append(ingredinet);
        } else {
            showAlert(message: "No se permiten más ingredientes")
            sender.setOn(false, animated: true)
        }
    }
    
    func showAlert(message: String) -> Void {
        let alterController = UIAlertController(title: "Pizza", message: message, preferredStyle: UIAlertControllerStyle.alert);
        alterController.addAction(UIAlertAction(title:"OK", style: UIAlertActionStyle.default, handler: nil));
        self.present(alterController, animated: true, completion: nil);
    }
    
}
