import 'package:aplicativo_san/home.dart';
import 'package:aplicativo_san/widget/button.dart';
import 'package:flutter/material.dart';
 
// ignore: camel_case_types
class segunda_via  extends StatelessWidget{
  const segunda_via ({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Religação',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                ),
              ),
                            
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 141, 140, 140),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(
                height: 40,
              ),               
              
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 10),
                                   
                  ButtonWidget(
                      width: 400,
                      height: 100,
                      label: 'ok',
                      onPressed: () {
            
                      }),

                   ],
              ),
              const SizedBox(height: 20),
              ButtonWidget(
                  width: 400,
                  height: 100,
                  label: 'Menu',
                  onPressed: () {
                    Navigator.push(
              context,
              MaterialPageRoute(
               builder: (context) => const MyApp()
               ),
            );
                  }),
                      
            ],
          ),
        ),
      ),
    );
  }
}

