import 'package:flutter/material.dart';



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
              Container(
                height: 16.0,
                color: Color(0xFFEBDFCC),
              ),
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
              Container(
                height: 16.0,
                color: Color(0xFFEBDFCC),
              ),
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
              Container(
                height: 16.0,
                color: Color(0xFFEBDFCC),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
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
                          'https://imageproxyb.ifunny.co/crop:x-20,resize:640x,quality:90x75/images/acecb17ac30ddc9a385a1d9f3ad32e71ee7d36dd75e51a7902361495c46348dd_1.jpg',
                          width: 225,
                          height: 225,
                        ),
                        SizedBox(height: 10),
                        TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: () {},
                          child: Text('  Preço: R\$ 100,00,'),
                        ),
                      ],
                    ),
                  ),
                  Container(
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
                          'https://imageproxyb.ifunny.co/crop:x-20,resize:640x,quality:90x75/images/acecb17ac30ddc9a385a1d9f3ad32e71ee7d36dd75e51a7902361495c46348dd_1.jpg',
                          width: 225,
                          height: 225,
                        ),
                        SizedBox(height: 10),
                        TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: () {},
                          child: Text('  Preço: R\$ 100,0,'),
                        ),
                      ],
                    ),
                  ),
                 Container(
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
                        onPressed: () {},
                        child: Text('Adicionar novo produto'),
                      ),
                    ],
                  ),
                )


                ],
              ),
              Container(
                height: 16.0,
                color: Color(0xFFEBDFCC),
              ),
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
              Container(
                height: 16.0,
                color: Color(0xFFEBDFCC),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
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
                          'https://imageproxyb.ifunny.co/crop:x-20,resize:640x,quality:90x75/images/acecb17ac30ddc9a385a1d9f3ad32e71ee7d36dd75e51a7902361495c46348dd_1.jpg',
                          width: 225,
                          height: 225,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Preço: R\$ 100,00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
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
                          'https://imageproxyb.ifunny.co/crop:x-20,resize:640x,quality:90x75/images/acecb17ac30ddc9a385a1d9f3ad32e71ee7d36dd75e51a7902361495c46348dd_1.jpg',
                          width: 225,
                          height: 225,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Preço: R\$ 100,00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        
                      ],
                      
                    ),
                    
                  ),
                  
                ],
                
              ),

             
               Container(
                height: 32.0,
                color: Color(0xFFEBDFCC),
                
              ),
              Row(
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
                         
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFB10C43), 
                          onPrimary: Colors.white, 
                        
                        ),
                        child: Text('Enviar para o carrinho'),
                      ),
                    ),
                ],
              ),
               
               Container(
                height: 32.0,
                color: Color(0xFFEBDFCC),
                
              ),
               
               Container(
                height: 32.0,
                color: Color(0xFFEBDFCC),
                
              ),
              Container(
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
                
              ),
               
               Container(
                height: 32.0,
                color: Color(0xFFEBDFCC),
                
              ),
              
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
                        'Nome do Produto',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'R\$ 19.99',
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

