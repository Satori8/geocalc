//
//  TriangleViewController.swift
//  GeometricCalc
//
//  Created by Александр on 02.10.15.
//  Copyright © 2015 Satori. All rights reserved.
//

import UIKit

class TriangleViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {
    @IBOutlet weak var trianglePicker: UIPickerView!
    let pickerData = ["Ravnostor","Ravnobedr","Priamoug","Proizvolniy"]
    
    //MARK: Data Sources
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    //MARK: Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        trianglePicker.dataSource = self
        trianglePicker.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
