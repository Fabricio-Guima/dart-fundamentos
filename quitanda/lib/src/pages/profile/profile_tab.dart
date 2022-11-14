import 'package:flutter/material.dart';
import 'package:quitanda/src/pages/common_widgets/customTextField.dart';
import 'package:quitanda/src/config/app_data.dart' as appData;

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: ListView(
        //animação de scroll
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: const [
          //email
          CustomTextField(icon: Icons.email, label: 'Email'),
          //nome
          CustomTextField(icon: Icons.person, label: 'Nome'),
          //celular
          CustomTextField(icon: Icons.phone, label: 'Celular'),
          //cpf
          CustomTextField(icon: Icons.file_copy, label: 'CPF'),
          //atualizar senha
          CustomTextField(
            icon: Icons.email,
            label: 'Senha',
            isSecret: true,
          ),
        ],
      ),
    );
  }
}
