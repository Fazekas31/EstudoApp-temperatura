import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txtcelsius = TextEditingController();
  TextEditingController txtfire = TextEditingController();

  void calcularTemp(){
    setState(() {
  double c, f;
  
  c = double.parse(txtcelsius.text);
  f = (c * 9/5) + 32;
  
  txtfire.text = f.toStringAsFixed(1);
});

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 53, 4, 152),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(top: 80, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Conversor de temperatura',
                  style: TextStyle(
                    color: Color.fromARGB(255, 212, 177, 5),
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Converta em Celsius para Fahrenheit',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: txtcelsius,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Entre com uma temp em Celsius'),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: txtfire,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Temperatura em Fahrenheit'),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: calcularTemp,
                    child: Text('Converter'),
                  ),
                ),
                 SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: (){
                      txtcelsius.clear();
                      txtfire.clear();
                    },
                    child: Text('Limpar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
