import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "VK ID",
            style: TextStyle(
              color: Color.fromRGBO(225, 227, 230, 1),
            ),
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: const [
          SizedBox(height: 20),
          LoginEmailOrPhone(),
          SizedBox(height: 10),
          Text(
            "или",
            style: TextStyle(
              color: Color.fromRGBO(93, 95, 97, 1),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          FormRegWidget(),
        ],
      ),
    );
  }
}

class LoginEmailOrPhone extends StatelessWidget {
  final textStyle = const TextStyle(
    fontSize: 15,
  );

  const LoginEmailOrPhone({super.key});
  void _auth() {}
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Container(
        color: const Color.fromRGBO(25, 25, 26, 1),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Вход ВКонтакте",
              style: TextStyle(
                color: Color.fromRGBO(225, 227, 230, 1),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Мобильная версия поможет вам оставаться ВКонтакте, даже если вы далеко от компьютера.",
              style: TextStyle(
                color: Color.fromRGBO(93, 95, 97, 1),
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(225, 227, 230, 1),
                    ),
                    foregroundColor: MaterialStateProperty.all(
                      Colors.black,
                    ),
                    overlayColor: MaterialStateProperty.all(
                        const Color.fromRGBO(93, 95, 97, 1)),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  onPressed: _auth,
                  child: const Text("Войти по телефону или почте")),
            ),
          ],
        ),
      ),
    );
  }
}

class FormRegWidget extends StatefulWidget {
  const FormRegWidget({super.key});

  @override
  State<FormRegWidget> createState() => _FormRegWidgetState();
}

class _FormRegWidgetState extends State<FormRegWidget> {
  final _auth = TextEditingController();
  String? errorText;
  void _reg() {
    if (_auth.text == "admin") {
      print("OK");
      errorText = null;
    } else if (_auth.text != "admin") {
      print("Wrong");
      errorText = "Error";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final decorate = InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      isCollapsed: true,
      focusColor: const Color.fromRGBO(225, 227, 230, 1),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color.fromRGBO(179, 181, 185, 1),
        ),
        borderRadius: BorderRadius.circular(50),
      ),
    );

    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Container(
        color: const Color.fromRGBO(25, 25, 26, 1),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Введите телефон или почту, для регистрации",
              style: TextStyle(
                color: Color.fromRGBO(225, 227, 230, 1),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            if (errorText == "Error") ...[
              const Text(
                "Ошибка",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 50,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
            TextField(
              controller: _auth,
              style: TextStyle(color: Colors.white),
              decoration: decorate,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(75, 179, 75, 1),
                    ),
                    foregroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(225, 227, 230, 1),
                    ),
                    overlayColor: MaterialStateProperty.all(
                        const Color.fromRGBO(225, 227, 230, 1)),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  onPressed: _reg,
                  child: const Text("Зарегистрироваться")),
            ),
          ],
        ),
      ),
    );
  }
}
