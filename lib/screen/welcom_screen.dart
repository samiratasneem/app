import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    final _amount= TextEditingController();
    final _tax= TextEditingController();
    final _netsalary= TextEditingController();
    double cal;
    double result;
    double salary;
    double taxcal;
    double sum;


    return Scaffold(
      body: SafeArea(
        child:Container(
            child: Column(
              children: [
                Text("Tax on Salary", style: TextStyle(fontSize: 30,color: Colors.black)),

                SizedBox(height: 15,),
                TextField(
                  controller: _amount,
                  decoration: InputDecoration(
                    labelText: "Salary",
                    labelStyle: TextStyle(fontSize: 15,color: Colors.amber),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),

                SizedBox(height: 15,),

                // SizedBox(height: 15,),
                TextField(
                  controller: _tax,
                  decoration: InputDecoration(
                    labelText: "Tax",
                    labelStyle: TextStyle(fontSize: 15,color: Colors.amber),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),

                SizedBox(height: 15,),
                // SizedBox(height: 15,),
                TextField(
                  controller: _netsalary,
                  decoration: InputDecoration(
                    labelText: "NetSalary",
                    labelStyle: TextStyle(fontSize: 15,color: Colors.amber),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),


                SizedBox(height: 15,),
                  GestureDetector(

                    onTap: ()
                    {
                        salary =double.parse(_amount.text);
                        if(salary>80000){
                          taxcal=salary*10/100;
                        }
                        else if(salary>50000){
                          taxcal=salary*5/100;
                        }
                        else{
                          taxcal=0;
                        }


                        _tax.text = taxcal.toString();
                        double netcal = salary - taxcal;
                         _netsalary.text = netcal.toString();

                    },
                    
                    child: Container(
                      alignment: Alignment.center,
                      height: size.height/14,
                      width: size.width,

                      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(5)),
                      
                    
                    
                    child: Text("Convert", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ),))
                  ),
              ],
            ),
        ) ,
    ),
    );
  }
}