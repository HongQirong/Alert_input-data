//
//  ViewController.swift
//  Alert_input data
//
//  Created by x on 2018/3/20.
//  Copyright © 2018年 x. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let alert = UIAlertController(title:"豋入", message: "青輸入帳號密碼", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "取消", style: .cancel)
        {(action) in
            self.dismiss(animated: true, completion: nil)
        }
        let alertreturn = UIAlertController(title:"帳號密碼不可為空", message: "",  preferredStyle: .alert)
        let okAction = UIAlertAction(title:"好哦", style: .default){(action) in
            self.dismiss(animated: true, completion: nil)
            self.present(alert, animated: true, completion: nil)
        }
        alertreturn.addAction(okAction)
        
        let loginAction = UIAlertAction(title: "登入", style: .default)
        {(action) in
            let uid = alert.textFields![0].text
            let pwd = alert.textFields![1].text
            
            print("帳號：\(uid as String?)")
            print("密碼:\(pwd as Optional)")
            print("密碼：\(pwd.debugDescription)")
            if (uid == "" || pwd == ""){
                self.dismiss(animated: true, completion: nil)
                self.present(
                    alertreturn,
                    animated: true,
                    completion: nil)
            
            }
            
        }
        
        alert.addTextField {(textField)in
            textField.placeholder = "Login"
            
        }
        alert.addTextField {(textField)in
            textField.placeholder = "Password"
            textField.isSecureTextEntry = true
        }
        alert.addAction(cancelAction)
        alert.addAction(loginAction)
        show(alert, sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

