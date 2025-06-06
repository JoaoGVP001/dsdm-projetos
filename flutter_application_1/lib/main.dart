import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/dogmodel.dart';
import 'package:flutter_application_1/dao/dogdao.dart';

void main(){

  DogModel cadela = DogModel(
    id: 1,
    nome: "Cadela",
    idade: 10,
  );

  debugPrint("Criando o Cachorro:");
  insertDog(cadela);
  debugPrint("Lendo o Cachorro: ${(findAll())}");

  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dog App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Dog List')),
        body: const Center(child: Text('Bem-vindo!')),
      ),
    );
  }
}