import 'package:flutter/material.dart';
import 'carrinho.dart';

void main() {
  runApp(MyApp());

}

















class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFEBDFCC),
        appBar: AppBar(
          title: Text('Shoppe Nerfada'),
          backgroundColor: Color(0xFFB10C43),
        ),
        body: SingleChildScrollView( // Adicione um SingleChildScrollView aqui
          child: Column(
            children: [
               buildFaixa(),
              Container(
                height: 32.0,
                color: Color(0xFFB10C43),
                child: Center(
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
                color: Color(0xFFEBDFCC),
                child: Center(
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
                  
                  buildProdutoContainer(
                    'https://d1xdssnpeez8k0.cloudfront.net/Custom/Content/Products/19/08/19086_rivotril-2mg-caixa-com-30-comprimidos-p7896226502410_l1_637217825484103578.jpg',
                    'Rivotril',
                    '200.00',
                  ),
                  
                  buildProdutoContainer(
                    'imagem',
                    'grosso',
                    '50.00',
                  ),
                 
                  buildAdicionarNovoProduto()

                ],
                
              ),
               buildFaixa(),
              Container(
                color: Color(0xFFEBDFCC),
                child: Center(
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
                    'https://cdn.awsli.com.br/300x300/2331/2331833/produto/179228047/31530d5eff.jpg',
                    'Geladeira Gamer Com Led',
                    '3250.00',
                  ),
                    buildProdutoContainer(
                    'https://ae01.alicdn.com/kf/HTB1djV4bwmTBuNjy1Xbq6yMrVXaf.jpg_640x640Q90.jpg_.webp',
                    'Xbox One Do Godi Of Uar ',
                    '4550.00',
                  ),
                     buildProdutoContainer(
                    'imagem',
                    'Estatos Unidos Da America ',
                    '1,999,999,999,999.00',
                  ),
                  
                  
                ],
                
              ),

             
              buildFaixa(),

              buildEnviarParaCarrinho(),

              buildFaixa(),
               
              buildFaixa(),

              buildcarrinhotext(),
               
              buildFaixa(),
              
              buildCarrinhoIntel('Puteiro', '19.99', context),
              buildCarrinhoIntel('Nome do Produto 2', '29.99', context),



            ],
          ),
        ),
        
       floatingActionButton: FloatingActionButton(
          onPressed: () {

          },
          child: Icon(Icons.shopping_cart),
          backgroundColor: Color(0xFFB10C43),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}



Widget buildProdutoContainer(String imagem, String nomeProduto, String preco) {
  return Container(
    height: 300.0,
    width: 300.0,
    decoration: BoxDecoration(
      color: Color(0xFFB10C43),
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
        SizedBox(height: 10),
        Text(
          nomeProduto,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            primary: Colors.white,
          ),
          onPressed: () {},
          child: Text('Preço: R\$ $preco'),
        ),
      ],
    ),
  );
}

            Widget buildAdicionarNovoProduto() {
              return Container(
                height: 300.0,
                width: 300.0,
                decoration: BoxDecoration(
                  color: Color(0xFFEBDFCC),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 225,
                      height: 225,
                      child: ElevatedButton(
                        onPressed: () {
                          // Implemente a lógica para adicionar um novo produto aqui
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFEBDFCC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 60,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {
                      
                      },
                      child: Text('Adicionar novo produto'),
                    ),
                  ],
                ),
              );
            }

          Widget buildEnviarParaCarrinho() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 300.0,
                  height: 30.0,
                  child: ElevatedButton(
                    onPressed: () {
                     
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFB10C43),
                      onPrimary: Colors.white,
                    ),
                    child: Text('Enviar para o carrinho'),
                  ),
                ),
                Container(
                  width: 300.0,
                  height: 30.0,
                  child: ElevatedButton(
                    onPressed: () {
                      // Implemente a ação para o segundo botão "Enviar para o carrinho" aqui
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFB10C43),
                      onPrimary: Colors.white,
                    ),
                    child: Text('Enviar para o carrinho'),
                  ),
                ),
                 Container(
                  width: 300.0,
                  height: 30.0,
                  child: ElevatedButton(
                    onPressed: () {
                      // Implemente a ação para o segundo botão "Enviar para o carrinho" aqui
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFB10C43),
                      onPrimary: Colors.white,
                    ),
                    child: Text('Enviar para o carrinho'),
                  ),
                ),
              ],
            );
          }

          Widget buildCarrinhoIntel(String nome, String preco, BuildContext context) {
            return Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2, // Largura da metade da tela
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEBDFCC),
                    border: Border.all(
                      color: Color(0xFFB10C43),
                      width: 2.0, // Espessura da borda mais grossa
                    ),
                    borderRadius: BorderRadius.circular(20), // Raio de 20 em tudo
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
                              nome, // Use o valor de 'nome' passado como argumento
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'R\$ $preco', // Use o valor de 'preço' passado como argumento
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
                          onPressed: () {
                            // Implemente a lógica para a ação do botão aqui
                          },
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


          Widget buildFaixa(){
            return  Container(
                height: 32.0,
                color: Color(0xFFEBDFCC),
                
              );

          }

          Widget buildcarrinhotext(){
              return Container(
                color: Color(0xFFEBDFCC),
                child: Center(
                  child: Text(
                    'Carrinho',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                
              );
          }