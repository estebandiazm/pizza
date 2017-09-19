//
//  PizzaCheeseViewController.swift
//  Pizza
//
//  Created by Juan Esteban Diaz on 18/09/17.
//  Copyright © 2017 Juan Esteban Diaz. All rights reserved.
//

import UIKit

class PizzaCheeseViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var sizePizza : String = "";
    var typeDough : String = "";
    var typeCheesePizzaSelected : String = "";
    var pickerDataSource = ["cheddar", "parmesano", "sin queso"];
    
    @IBOutlet weak var sizePizzaLabel: UILabel!
    @IBOutlet weak var typeDoughLabel: UILabel!
    
    @IBOutlet weak var cheesePicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        cheesePicker.dataSource = self;
        cheesePicker.delegate = self;
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        sizePizzaLabel.text = sizePizzaLabel.text! + ": " + self.sizePizza;
        typeDoughLabel.text = typeDoughLabel.text! + ": " + self.typeDough;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextView = segue.destination as! IngredientsViewController;
        nextView.sizePizza = self.sizePizza;
        nextView.typeDough = self.typeDough;
        nextView.typeCheese = self.typeCheesePizzaSelected;
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSource[row];
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.typeCheesePizzaSelected = pickerDataSource[row];
    }

}
