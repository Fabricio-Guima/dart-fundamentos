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
        children: [
          //email
          CustomTextField(
            initialValue: appData.user.email,
            icon: Icons.email,
            label: 'Email',
            readOnly: true,
          ),
          //nome
          CustomTextField(
            initialValue: appData.user.name,
            icon: Icons.person,
            label: 'Nome',
            readOnly: true,
          ),
          //celular
          CustomTextField(
            initialValue: appData.user.phone,
            icon: Icons.phone,
            label: 'Celular',
            readOnly: true,
          ),
          //cpf
          CustomTextField(
            initialValue: appData.user.cpf,
            icon: Icons.file_copy,
            label: 'CPF',
            readOnly: true,
          ),
          //atualizar senha
          CustomTextField(
            initialValue: appData.user.password,
            icon: Icons.email,
            label: 'Senha',
            isSecret: true,
            readOnly: false,
          ),
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.green,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: const Text('Atualizar senha'),
            ),
          ),
        ],
      ),
    );
  }
}
