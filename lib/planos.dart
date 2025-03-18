import 'package:flutter/material.dart';
import 'main.dart';

class Planos extends StatelessWidget {
  const Planos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        child: const SafeArea(child: Scaffold(body: Conteudo())),
      ),
    );
  }
}

class Conteudo extends StatelessWidget {
  const Conteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Voltar(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [TituloPlanos(), PlanoGratuito(), PlanoPago()],
            ),
          ),
        ),
      ],
    );
  }
}

class Voltar extends StatelessWidget {
  const Voltar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.1,
      child: Stack(
        children: [
          Positioned(
            top: screenHeight * 0.001,
            left: screenWidth * 0.01,
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: 40, color: Color(0xFFDD7514)),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                  (Route<dynamic> route) => false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TituloPlanos extends StatelessWidget {
  const TituloPlanos({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth * 0.08;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: screenHeight * 0.04,
          alignment: Alignment.center,
          child: Text(
            'Planos',
            style: TextStyle(
              color: Color(0xFFDD7514),
              fontSize: fontSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: screenHeight * 0.04),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Conheça o plano TASK+ com muitas vantagens para você motoboy ! Você pode continuar com o nosso plano gratuito mas com limitações.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screenWidth * 0.04,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PlanoGratuito extends StatelessWidget {
  const PlanoGratuito({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.07),
      child: Container(
        width: screenWidth * 0.9,
        height: screenHeight * 0.5,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(screenWidth * 0.05),
          ),
          shadows: [
            BoxShadow(
              color: Color(0xFFDD7514),
              blurRadius: screenWidth * 0.02,
              offset: Offset(0, 0),
              spreadRadius: screenWidth * 0.005,
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.03,
              left: screenWidth * 0.05,
              child: Text(
                "Gratuito",
                style: TextStyle(
                  color: Color(0xFFDD7514),
                  fontSize: screenWidth * 0.06,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: screenHeight * 0.12,
              left: screenWidth * 0.05,
              right: screenWidth * 0.05,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "• ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Acesso às vagas;",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth * 0.04,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    children: [
                      Text(
                        "• ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Limite de 3 inscrições por dia.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth * 0.04,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: screenHeight * 0.05,
              left: screenWidth * 0.15,
              right: screenWidth * 0.15,
              child: SizedBox(
                width: screenWidth * 0.5,
                height: screenHeight * 0.07,
                child: ElevatedButton(
                  onPressed: () {
                    print("Botão clicado");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFDD7514),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        screenWidth * 0.2,
                      ),
                    ),
                  ),
                  child: Text(
                    "Gratuito",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.045,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class PlanoPago extends StatelessWidget {
  const PlanoPago({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.07),
      child: Container(
        width: screenWidth * 0.9,
        height: screenHeight * 0.5,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(screenWidth * 0.05),
          ),
          shadows: [
            BoxShadow(
              color: Color(0xFFDD7514),
              blurRadius: screenWidth * 0.01,
              offset: Offset(0, 0),
              spreadRadius: screenWidth * 0.01,
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.04,
              left: screenWidth * 0.05,
              child: Text(
                "Task+",
                style: TextStyle(
                  color: Color(0xFFDD7514),
                  fontSize: screenWidth * 0.06,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: screenHeight * 0.12,
              left: screenWidth * 0.05,
              right: screenWidth * 0.05,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "• ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Acesso às vagas;",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth * 0.04,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    children: [
                      Text(
                        "• ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Inscrições ilimitadas;",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth * 0.04,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    children: [
                      Text(
                        "• ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Recebimento de vagas priorizado.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth * 0.04,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: screenHeight * 0.05,
              left: screenWidth * 0.15,
              right: screenWidth * 0.15,
              child: SizedBox(
                width: screenWidth * 0.5,
                height: screenHeight * 0.07,
                child: ElevatedButton(
                  onPressed: () {
                    print("Botão clicado");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFDD7514),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.2),
                    ),
                  ),
                  child: Text(
                    "R\$ 2,99/ mensal",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.045,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

