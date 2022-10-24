import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Erick',
      'last_name': 'Estrada',
      'email': 'eof105@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs y Forms"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: "Nombre",
                  hintText: "Nombre del Usuario",
                  icon: Icons.supervised_user_circle,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Apellido",
                  hintText: "Apellido del Usuario",
                  icon: Icons.supervised_user_circle,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Email",
                  hintText: "Email del Usuario",
                  icon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Contraseña",
                  hintText: "",
                  icon: Icons.password_outlined,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                
                DropdownButtonFormField(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(value: "Admin", child: Text("Admin")),
                    DropdownMenuItem(value: "SuperUser", child: Text("SuperUser")),
                    DropdownMenuItem(value: "Developer", child: Text("Developer")),
                    DropdownMenuItem(value: "Jr Developer", child: Text("Jr Developer")),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print("Form no valido");
                        return;
                      }
                      print(formValues);
                    },
                    child: const SizedBox(width: double.infinity, child: Center(child: Text("Guardar"))))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
