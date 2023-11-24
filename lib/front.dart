import 'package:flutter/material.dart';
import 'carrinho.dart';
import 'addprojeto.dart';
import 'drift.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<bool> buttonEnablede = [false, false, false];
  bool validacao =true;
  
  @override
  Widget build(BuildContext context) {
    List<CarrinhoIntel> carrinhos = [];
    
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFEBDFCC),
        
        appBar: AppBar(
          
          title: const Text('Shoppe Nerfada'),
          backgroundColor: const Color(0xFFB10C43),
          
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildFaixa(),
              Container(
                height: 32.0,
                color: const Color(0xFFB10C43),
                child: const Center(
                  child: Text(
                    'Atividade E-commerce Flutter',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEBDFCC),
                    ),
                  ),
                ),
              ),
              buildFaixa(),
              Container(
                color: const Color(0xFFEBDFCC),
                child: const Center(
                  child: Text(
                    'Seus Produtos',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              buildFaixa(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 if(validacao) const ProductScreen(),
                   if(validacao) const ProductScreen(),
                 if(validacao) const ProductScreen(),
                ],
                
              ),
               buildFaixa(),
                
         
              buildFaixa(),
              Container(
                color: const Color(0xFFEBDFCC),
                child: const Center(
                  child: Text(
                    'Produtos',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              buildFaixa(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildProdutoContainer(
                    OutrosProdutos.imagem,
                    OutrosProdutos.nome,
                    '3250.00',
                  ),
                  buildProdutoContainer(
                    OutrosProdutos2.imagem,
                    OutrosProdutos2.nome,
                    '4550.00',
                  ),
                  buildProdutoContainer(
                     OutrosProdutos3.imagem,
                     OutrosProdutos3.nome,
                    '1,999,999,999,999.00',
                  ),
                ],
              ),
              buildFaixa(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 300.0,
                    height: 30.0,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          buttonEnablede[0] = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: buttonEnablede[0]
                            ? Colors.green
                            : const Color(0xFFB10C43),
                      ),
                      child: const Text('Enviar para o carrinho'),
                    ),
                  ),
                  SizedBox(
                    width: 300.0,
                    height: 30.0,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          buttonEnablede[1] = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: buttonEnablede[1]
                            ? Colors.green
                            : const Color(0xFFB10C43),
                      ),
                      child: const Text('Enviar para o carrinho'),
                    ),
                  ),
                  SizedBox(
                    width: 300.0,
                    height: 30.0,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          buttonEnablede[2] = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: buttonEnablede[2]
                            ? Colors.green
                            : const Color(0xFFB10C43),
                      ),
                      child: const Text('Enviar para o carrinho'),
                    ),
                  ),
                ],
              ),
              buildFaixa(),
              buildFaixa(),
            ],
          ),
        ),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CarrinhoScreen(
                    carrinhos: carrinhos,
                    buttonEnablede: buttonEnablede,
                  ),
                ),
              );
            },
            backgroundColor: const Color(0xFFB10C43),
            child: const Icon(Icons.shopping_cart),
          );
        }),
      ),
    );
  }

  Widget buildProdutoContainer(
      String imagem, String nomeProduto, String preco) {
    return Container(
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
        color: const Color(0xFFB10C43),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imagem,
            width: 225,
            height: 225,
          ),
          const SizedBox(height: 10),
          Text(
            nomeProduto,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            child: Text('Preço: R\$ $preco'),
          ),
        ],
      ),
    );
  }
}

  Widget buildProdutoContainer3(
      String imagem, String nomeProduto, String preco,) {
    return Container(
      height: 330.0,
      width: 300.0,
      decoration: BoxDecoration(
        color: const Color(0xFFB10C43),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imagem,
            width: 225,
            height: 225,
          ),
          const SizedBox(height: 10),
          Text(
            nomeProduto,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            child: Text('Preço: R\$ $preco'),
          ),
        ],
      ),
    );
  }



Widget buildCarrinhoIntel(String nome, String preco, BuildContext context) {
  return Column(
    children: [
      Container(
        width: MediaQuery.of(context).size.width / 2,
        height: 100,
        decoration: BoxDecoration(
          color: const Color(0xFFEBDFCC),
          border: Border.all(
            color: const Color(0xFFB10C43),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    nome,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'R\$ $preco',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFB10C43),
                  shape: const CircleBorder(),
                ),
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 32.0,
        color: const Color(0xFFEBDFCC),
      ),
    ],
  );
}

Widget buildFaixa() {
  return Container(
    height: 32.0,
    color: const Color(0xFFEBDFCC),
  );
}

