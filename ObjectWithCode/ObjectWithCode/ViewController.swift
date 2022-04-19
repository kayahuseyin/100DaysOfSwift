//
//  ViewController.swift
//  ObjectWithCode
//
//  Created by Hüseyin Kaya on 13.04.2022.
//

import UIKit

class ViewController: UIViewController {

    var myLabel = UILabel() // Aşağıdaki func'ta kullanıp label'ı değiştirebilmemiz için bunu alttaki func'ın üstünde tanımladık.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.size.width // Pikselleri alıp bu sabite aktardık
        let height = view.frame.size.height
        
        
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5 - 50/2, width: width * 0.8, height: 50)
       
        view.addSubview(myLabel)
        
        
        let myButton = UIButton() // Buton oluşturuldu
        myButton.setTitle("My Button", for: UIControl.State.normal) // Butonun başlığı oluşturuldu .normal .highlighted tipi seçiliyor
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal) // Rengini değiştik
        myButton.frame = CGRect(x: width * 0.5 - width * 0.5 / 2, y: height * 0.6, width: width * 0.5, height: 50) //Frame oluşturuyoruz
        view.addSubview(myButton)// Butonun gözükmesini sağladık
        
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside) // hedef kendisi
        // self yazdığımız için üstteki ViewController'a referans veriyor
        //Hangi aksiyon olacağını yazdık
        // en sonuncusu da event
    }
   @objc func myAction(){
       myLabel.text = "Tapped" // Artık myLabel'a ulaşabilirim çünkü üstteki func'ın dışında
       
   }

}

