//
//  ViewController.swift
//  Assignment-2.-Block-2.
//
//  Created by Viktor Riga on 12.05.2020.
//  Copyright © 2020 Viktor Riga. All rights reserved.
//

//
//Задача 3. У студента имеются накопления 2400 грн. Ежемесячная стипендия составляет 700 гривен, а расходы на проживание превышают ее и составляют 1000 грн. в месяц. Рост цен ежемесячно увеличивает расходы на 3%. Определить, сколько месяцев сможет прожить студент, используя только накопления и стипендию.
//
//Задача 4. 2хзначную цело численную переменную типа 25, 41, 12. После выполнения вашей программы у вас в другой переменной должно лежать это же число только задом на перед 52, 14, 21
//
//Пример с числом 52
//
//Вывод в консоль:
//
//Перевернув число 52 получим 25

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("Task 1")
        manhattanIsland(inYear: 1826, toYear: 2020, persent: 0.06, price: 24)
        print("Task 2")
        studentMonthlyScholarship(scholarship: 700, expenses: 1000, inflation: 0.03, month: 10)
        print("Task 3")
        howManyMonths (savings: 2400, scholarship: 700, inflation: 0.03, expenses: 1000)
        print("Task 4")
    }

// Manhattan Island was acquired by settlers for $ 24 in 1826. What would be the current state of their account if these 24 dollars were then deposited in a bank at 6% of annual income?
    
    func manhattanIsland (inYear: Int,
                          toYear: Int,
                          persent: Double,
                          price: Double) {
        var counter = price
        for _ in inYear...toYear {
            counter += counter * persent
        }
        print("В настоящее время состояние их счета = $",String(counter))
        
    }
    
// ----
    
// Task 2. The monthly scholarship of the student is 700 hryvnias, and living expenses exceed it and amount to 1000 UAH. per month. Rising prices monthly increases spending by 3%. Determine how much money you need to have in order to live the academic year (10 months) using only this money and a scholarship.
    
    func studentMonthlyScholarship (scholarship: Double,
                                    expenses: Double,
                                    inflation: Double,
                                    month: Int){
        var spending = expenses
        var Money : Double = 0
        
        for _ in 1...month {
            Money += scholarship
            spending += spending * inflation
            Money -= spending
        }
        print("Нужно иметь сумму из", abs(Money))
    }
    
// Task 3. The student has savings of 2400 UAH. The monthly scholarship is 700 hryvnias, and living expenses exceed it and amount to 1000 UAH. per month. Rising prices monthly increases spending by 3%. Determine how many months a student can live using only savings and a scholarship.
    
    func howManyMonths (savings: Double,
                        scholarship: Double,
                        inflation: Double,
                        expenses: Double) {
        
        var money = savings
        var spendings = expenses
        var month = 0
        while money >= 0 {
            money += scholarship
            spendings += spendings * inflation
            money -= spendings
            month += 1
        }
        print("Накопления = \(savings), стипендия = \(scholarship), месячная инфляция = \(inflation), расходы = \(expenses) можно прожить = \(month) месяцев")
    }
    

}

