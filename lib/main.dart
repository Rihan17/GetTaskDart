import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SafeArea(
        child: Scaffold(
          body: BodyContent(),
          bottomNavigationBar: GoogleBottomBar(),
        ),
      ),
    );
  }
}

class BodyContent extends StatelessWidget {
  const BodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CabecalhoPersonalizado(),
        SizedBox(height: 20),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TaskPlus(),
                SizedBox(height: 10),
                TextVagasDisponiveis(),
                SizedBox(height: 10),
                Vaga(),
                SizedBox(height: 10),
                Vaga(),
                SizedBox(height: 10),
                TextVagasAceitas(),
                SizedBox(height: 10),
                VagaAceita(),
                SizedBox(height: 10),
                CadVaga(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CabecalhoPersonalizado extends StatelessWidget {
  const CabecalhoPersonalizado({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight * 0.25,
      decoration: const ShapeDecoration(
        color: Color(0xFFDD7514),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[ConteudoCabecalho(), PilhaCabecalho()],
        ),
      ),
    );
  }
}

class ConteudoCabecalho extends StatelessWidget {
  const ConteudoCabecalho({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: screenWidth * 0.45,
          height: 24,
          child: const Text(
            'GetTask',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Image.asset(
          'images/iconperfil.png',
          width: screenWidth * 0.1,
          height: screenWidth * 0.1,
        ),
      ],
    );
  }
}

class PilhaCabecalho extends StatelessWidget {
  const PilhaCabecalho({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 100,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: (screenWidth / 2) - (140 / 2),
            child: const Text(
              'Olá, Rihan',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: (screenWidth / 2) - (145/2),
            child: Image.asset('images/avaliacao.png', width: 120, height: 120),
          ),
        ],
      ),
    );
  }
}

class TaskPlus extends StatelessWidget {
  const TaskPlus({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double containerWidth = constraints.maxWidth * 0.9;
        double containerHeight = 44;
        double fontSize = containerWidth * 0.04;

        return Container(
          margin: const EdgeInsets.all(5),
          child: ElevatedButton(
            onPressed: () {
              print('Botão Task+ pressionado');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFDD7514),
              foregroundColor: Colors.white,
              shadowColor: Color(0xFFDD7514),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.white, width: 2),
              ),
            ),
            child: Container(
              width: containerWidth,
              height: containerHeight,
              alignment: Alignment.center,
              child: Text(
                'Conheça o plano Task +',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class TextVagasDisponiveis extends StatelessWidget {
  const TextVagasDisponiveis({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(screenWidth * 0.05, 10, 0, 0),
          child: Text(
            'Vagas Disponíveis',
            style: TextStyle(
              color: Colors.black,
              fontSize: screenWidth * 0.06,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class Vaga extends StatelessWidget {
  const Vaga({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double containerWidth = constraints.maxWidth * 0.9;
        double containerHeight = 100;
        double imageSize = containerHeight * 0.4;
        double fontSizePrimary = containerWidth * 0.035;
        double fontSizeSecondary = containerWidth * 0.03;

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: ElevatedButton(
            onPressed: () => _dialogBuilder(context),
            style: ElevatedButton.styleFrom(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Color(0xFFDD7514), width: 2),
              ),
            ),
            child: Container(
              width: containerWidth,
              height: containerHeight,
              child: Stack(
                children: [
                  Positioned(
                    top: containerHeight * 0.3,
                    left: containerWidth * 0.2,
                    child: Text(
                      'Santos - Canal 4',
                      style: TextStyle(
                        color: Color(0xff000000).withOpacity(0.47),
                        fontSize: fontSizeSecondary,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Positioned(
                    top: containerHeight * 0.7,
                    left: containerWidth * 0.05,
                    child: Text(
                      'Destino: São Paulo',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: fontSizeSecondary,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Positioned(
                    top: containerHeight * 0.1,
                    left: containerWidth * 0.07,
                    child: Image.asset(
                      'images/image.png',
                      width: imageSize,
                      height: imageSize,
                    ),
                  ),
                  Positioned(
                    top: containerHeight * 0.1,
                    left: containerWidth * 0.2,
                    right: containerWidth * 0.1,
                    child: Center(
                      child: Text(
                        'Levar uma Encomenda a São Paulo',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: fontSizePrimary,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Detalhes da Vaga'),
        content: const Text(
          'Endereço:\n'
          '\n'
          'Peso:\n'
          '\n'
          'Itens:\n'
          '\n'
          'Valor:\n'
          '\n'
          'Entregar até :',
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text(
              'Aceitar',
              style: TextStyle(color: Color(0xFFDD7514)),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text(
              'Voltar',
              style: TextStyle(color: Color(0xFFDD7514)),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

class GoogleBottomBar extends StatefulWidget {
  const GoogleBottomBar({Key? key}) : super(key: key);

  @override
  State<GoogleBottomBar> createState() => _GoogleBottomBarState();
}

class _GoogleBottomBarState extends State<GoogleBottomBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [HomePage(), VagasPage(), ConfigPage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFDD7514),
        unselectedItemColor: const Color(0xff757575),
        onTap: _onItemTapped,
        items: _navBarItems,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CabecalhoPersonalizado(),
        SizedBox(height: 20),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TaskPlus(),
                SizedBox(height: 10),
                TextVagasDisponiveis(),
                SizedBox(height: 10),
                Vaga(),
                SizedBox(height: 10),
                Vaga(),
                SizedBox(height: 10),
                TextVagasAceitas(),
                SizedBox(height: 10),
                VagaAceita(),
                SizedBox(height: 10),
                CadVaga(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ConfigPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('OI');
  }
}

class VagasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ConteudoCabecalhoVagas(),
                TituloVagas(),
                SizedBox(height: 30),
                Vaga(),
                SizedBox(height: 10),
                Vaga(),
                SizedBox(height: 10),
                Vaga(),
                SizedBox(height: 10),
                Vaga(),
                SizedBox(height: 10),
                Vaga(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

final List<SalomonBottomBarItem> _navBarItems = [
  SalomonBottomBarItem(icon: Icon(Icons.home), title: Text('Home')),
  SalomonBottomBarItem(icon: Icon(Icons.work), title: Text('Vagas')),
  SalomonBottomBarItem(
    icon: Icon(Icons.settings),
    title: Text('Configurações'),
  ),
];

class TextVagasAceitas extends StatelessWidget {
  const TextVagasAceitas({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(
            screenWidth * 0.05,
            10,
            0,
            0,
          ),
          child: Text(
            'Vagas Aceitas',
            style: TextStyle(
              color: Colors.black,
              fontSize: screenWidth * 0.06,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class VagaAceita extends StatelessWidget {
  const VagaAceita({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double containerWidth = constraints.maxWidth * 0.9;
        double containerHeight = 100;
        double imageSize = containerHeight * 0.4;
        double fontSizePrimary = containerWidth * 0.035;
        double fontSizeSecondary = containerWidth * 0.03;

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: ElevatedButton(
            onPressed: () => _dialogBuilder3(context),
            style: ElevatedButton.styleFrom(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Color(0xFFDD7514), width: 2),
              ),
            ),
            child: Container(
              width: containerWidth,
              height: containerHeight,
              child: Stack(
                children: [
                  Positioned(
                    top: containerHeight * 0.3,
                    left: containerWidth * 0.2,
                    child: Text(
                      'Santos - Canal 4',
                      style: TextStyle(
                        color: Color(0xff000000).withOpacity(0.47),
                        fontSize: fontSizeSecondary,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Positioned(
                    top: containerHeight * 0.7,
                    left: containerWidth * 0.05,
                    child: Text(
                      'Destino: São Paulo',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: fontSizeSecondary,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Positioned(
                    top: containerHeight * 0.1,
                    left: containerWidth * 0.07,
                    child: Image.asset(
                      'images/image.png',
                      width: imageSize,
                      height: imageSize,
                    ),
                  ),
                  Positioned(
                    top: containerHeight * 0.1,
                    left: containerWidth * 0.2,
                    right: containerWidth * 0.1,
                    child: Center(
                      child: Text(
                        'Levar uma Encomenda a São Paulo',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: fontSizePrimary,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

Future<void> _dialogBuilder3(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Detalhes da Vaga'),
        content: const Text(
          'Endereço:\n'
              '\n'
              'Peso:\n'
              '\n'
              'Itens:\n'
              '\n'
              'Valor:\n'
              '\n'
              'Entregar até :',
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text(
              'Fechar',
              style: TextStyle(color: Color(0xFFDD7514)),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

class CadVaga extends StatelessWidget {
  const CadVaga({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: () {
          print('Botão cadvaga pressionado');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFDD7514),
          foregroundColor: Colors.white,
          shadowColor: const Color(0xFFDD7514),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Container(
          width: screenWidth * 0.9,
          height: screenWidth * 0.11,
          alignment: Alignment.center,
          child: Text(
            'Publique sua vaga aqui',
            style: TextStyle(
              color: Colors.white,
              fontSize: screenWidth * 0.04,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class ConteudoCabecalhoVagas extends StatelessWidget {
  const ConteudoCabecalhoVagas({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double paddingLeft = screenWidth * 0.03;
        double paddingTop = screenWidth * 0.050;
        double textWidth = screenWidth * 0.7;
        double textHeight = screenWidth * 0.06;
        double fontSize = screenWidth * 0.04;

        return Padding(
          padding: EdgeInsets.only(left: paddingLeft, top: paddingTop),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: textWidth,
                height: textHeight,
                child: Text(
                  'GetTask',
                  style: TextStyle(
                    color: Color(0xFFDD7514),
                    fontSize: fontSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class TituloVagas extends StatelessWidget {
  const TituloVagas({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth * 0.08;
    double searchBarWidth = screenWidth * 0.7;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          alignment: Alignment.center,
          child: Text(
            'Vagas',
            style: TextStyle(
              color: Color(0xFFDD7514),
              fontSize: fontSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 10),
        Center(
          child: Container(
            width: searchBarWidth,
            child: SearchBar(
              leading: Icon(Icons.search),
              hintText: "Busque uma vaga...",
              onChanged: (value) => print("Digitando: $value"),
              backgroundColor: WidgetStatePropertyAll(Colors.white),
              shadowColor: WidgetStatePropertyAll(Colors.orange),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),

            ),
          ),
        ),
      ],
    );
  }
}
