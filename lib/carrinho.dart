import 'package:flutter/material.dart';

void main() {
  runApp(CarrinhoFinal());
}

class CarrinhoFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarrinhoScreen(),
    );
  }
}

class CarrinhoScreen extends StatefulWidget {
  @override
  _CarrinhoScreenState createState() => _CarrinhoScreenState();
}

class _CarrinhoScreenState extends State<CarrinhoScreen> {
  List<CarrinhoIntel> carrinhos = [];
  List<bool> buttonEnabled = [true, true, true];

  void adicionarCarrinho(String nome, String preco, int index) {
    setState(() {
      carrinhos.add(CarrinhoIntel(key: UniqueKey(), nome: nome, preco: preco, index: index));
      buttonEnabled[index] = false;
    });
  }

  void removerCarrinho(Key key, int index) {
    setState(() {
      carrinhos.removeWhere((carrinho) => carrinho.key == key);
      buttonEnabled[index] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toggle Carrinho Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            for (var carrinho in carrinhos) ...[
              CarrinhoIntelWidget(carrinho: carrinho, onExcluir: () {
                removerCarrinho(carrinho.key, carrinho.index);
              }),
              
            ],
            ElevatedButton(
              onPressed: buttonEnabled[0]
                  ? () {
                      adicionarCarrinho("Geladeira Gamer Com Led", "Preço 3250.00", 0);
                    }
                  : null,
              child: Text('Botão 1'),
            ),
            ElevatedButton(
              onPressed: buttonEnabled[1]
                  ? () {
                      adicionarCarrinho("Xbox One Do Godi Of Uar", "Preço 4550.00", 1);
                    }
                  : null,
              child: Text('Botão 2'),
            ),
            ElevatedButton(
              onPressed: buttonEnabled[2]
                  ? () {
                      adicionarCarrinho("Estatos Unidos Da America", "1,999,999,999,999.00", 2);
                    }
                  : null,
              child: Text('Botão 3'),
            ),
          ],
        ),
      ),
    );
  }
}

class CarrinhoIntelWidget extends StatelessWidget {
  final CarrinhoIntel carrinho;
  final VoidCallback onExcluir;

  CarrinhoIntelWidget({required this.carrinho, required this.onExcluir});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          key: carrinho.key,
          width: MediaQuery.of(context).size.width / 2,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xFFEBDFCC),
            border: Border.all(
              color: Color(0xFFB10C43),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      carrinho.nome,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'R\$ ${carrinho.preco}',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: onExcluir,
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFB10C43),
                    shape: CircleBorder(),
                  ),
                  child: Icon(
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
          color: Color(0xFFEBDFCC),
        ),
      ],
    );
  }
}

class CarrinhoIntel {
  final Key key;
  final String nome;
  final String preco;
  final int index;

  CarrinhoIntel({required this.key, required this.nome, required this.preco, required this.index});
}