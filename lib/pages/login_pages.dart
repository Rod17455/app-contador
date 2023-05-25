import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Fondo(),
          Contenido()
        ],
      ),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 5,),
          Text(
            'Welcome to you account',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              letterSpacing: 1.5,
            )
          ),
          SizedBox(height: 5,),
          Datos()
        ],
      ),
    );
  }
}

class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Email',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 5,),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'email@example.com'
            ),
          ),
          SizedBox(height: 5,),
          const Text(
             'Password',
             style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 5,),
          TextFormField(
            obscureText: obs,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'password here',
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.remove_red_eye_outlined
                ),
                onPressed: () => {
                  setState(()=> obs == true ? obs = false : obs = true
                  )
                },
              )
            ),
          ),
          Remember(),
          SizedBox(),
          Botones()
        ],
      ),
      
    );
  }
}

class Remember extends StatefulWidget {
  const Remember({super.key});

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Botones extends StatelessWidget {
  const Botones({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}