import 'package:flutter/material.dart';

class DCTextField extends StatefulWidget {
  const DCTextField({super.key});

  @override
  State<DCTextField> createState() => _DCTextFieldState();
}

class _DCTextFieldState extends State<DCTextField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Widgets'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const TextField(
              keyboardType: TextInputType.number,
              // style: Theme.of(context).textTheme.headlineMedium,
              decoration: InputDecoration(
                  icon: Icon(Icons.phone),
                  labelText: 'Phone',
                  border: UnderlineInputBorder()),
            ),
            const SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                icon: Icon(Icons.phone),
                labelText: 'Phone',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
              ),
              onChanged: (value) {
                // CODE CHALLENGE - add validation for Phone
              },
            ),
            const SizedBox(height: 10),
            const TextField(
              maxLines: 5,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                  icon: Icon(Icons.description),
                  labelText: 'Multiline Input Text',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            TextField(
              // keyboardType: TextInputType.visiblePassword,
              obscureText: !showPassword,
              decoration: InputDecoration(
                  icon: const Icon(Icons.password_outlined),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.remove_red_eye_outlined),
                    color: showPassword ? Colors.blue : Colors.grey,
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                  ),
                  labelText: 'Password',
                  border: const OutlineInputBorder()),
            ),
          ],
        ),
      ),
    );
  }
}
