//
//  ViewController.swift
//  Pizza
//
//  Created by Juan Esteban Diaz on 18/09/17.
//  Copyright © 2017 Juan Esteban Diaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    var pickerDataSource = ["Chica", "Mediana", "Grande"];
    
    var sizePizzaSelected: String = "";
    
    @IBOutlet weak var sizePizzaPicker: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.sizePizzaPicker.dataSource = self;
        self.sizePizzaPicker.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextView = segue.destination as! PizzaDoughViewController;
        nextView.sizePizza = sizePizzaSelected;
    }

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
        self.sizePizzaSelected = pickerDataSource[row];
    }
}

