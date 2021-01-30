import 'package:appPodcast/widgets/menu_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewPortConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height,
                minWidth: viewPortConstraints.maxWidth,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  SpoticastLogo(width: 500, height: 500),
                  Spacer(),
                  MenuButton(
                    icon: FacebookIcon,
                    buttonTitle: 'Entrar com o Facebook',
                    onPressed: () {},
                  ),
                  MenuButton(
                    icon: GoogleIcon,
                    buttonTitle: 'Entrar com o Google',
                    onPressed: () {},
                  ),
                  MenuButton(
                    icon: Icon(Icons.email_sharp),
                    buttonTitle: 'Cadastrar com e-mail',
                    onPressed: () {},
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text.rich(
                      TextSpan(
                        text: 'Já tem uma conta? ',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w300),
                        children: [
                          TextSpan(
                            text: 'Entrar',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 30))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class SpoticastLogo extends StatelessWidget {
  final double width;
  final double height;

  SpoticastLogo({this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      child: Image.asset(
        'assets/images/logo.png',
        color: Colors.deepPurple[400],
      ),
    );
  }
}

const GoogleIcon = Image(
  image: AssetImage('assets/images/google_logo.png'),
  width: 24,
  height: 24,
);

const FacebookIcon = Image(
  image: AssetImage('assets/images/facebook_logo.png'),
  width: 24,
  height: 24,
);
