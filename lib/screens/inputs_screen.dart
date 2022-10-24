import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs y Forms"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [

              CustomInputField(labelText: "Nombre", hintText: "Nombre del Usuario", icon: Icons.supervised_user_circle,),
              
              SizedBox(height: 30),

              CustomInputField(
                labelText: "Apellido",
                hintText: "Apellido del Usuario",
                icon: Icons.supervised_user_circle,
              ),

              SizedBox(height: 30),

              CustomInputField(
                labelText: "Email",
                hintText: "Email del Usuario",
                icon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
              ),

                            SizedBox(height: 30),
              CustomInputField(
                labelText: "Contraseña",
                hintText: "",
                icon: Icons.password_outlined,
                obscureText: true,
              ),

            ],
          ),
        ),
      ),
    );
  }
}


