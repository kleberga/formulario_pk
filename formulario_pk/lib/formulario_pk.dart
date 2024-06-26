library formulario_pk;
import 'package:flutter/material.dart';

class FormularioComponente {

  Widget CaixaFormularioLogin(TextEditingController controlador, String descricao,
      bool obscureTexto, String mensagemErro, Icon icone, String id){
    return TextFormField(
      key: Key(id),
      controller: controlador,
      obscureText: obscureTexto,
      decoration: InputDecoration(
          label: Text(descricao, style: TextStyle(fontSize: 20),),
          border: OutlineInputBorder(), icon: icone),
      validator: (value) {
        if (value == null || value.isEmpty ) {
          return mensagemErro;
        }
        return null;
      },
    );
  }

  Widget CaixaFormularioRegistroEmail(TextEditingController controlador,
      bool obscureTexto, String stringRegex, String id){
    final regex = RegExp(stringRegex);
    return TextFormField(
      key: Key(id),
      controller: controlador,
      obscureText: obscureTexto,
      decoration: InputDecoration(
          label: Text('E-mail', style: TextStyle(fontSize: 20),),
          border: OutlineInputBorder(), icon: Icon(Icons.email)),
      validator: (value) {
        if (value == null || value.isEmpty || !regex.hasMatch(value)) {
          return 'Informe um e-mail válido!';
        }
        return null;
      },
    );
  }

  Widget CaixaFormularioRegistroSenha(TextEditingController controlador,
      bool obscureTexto, String id){
    return TextFormField(
      key: Key(id),
      controller: controlador,
      obscureText: obscureTexto,
      decoration: InputDecoration(
          label: Text('Senha', style: TextStyle(fontSize: 20),),
          border: OutlineInputBorder(), icon: Icon(Icons.key)),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Informe uma senha!';
        }
        if (value.length < 8) {
          return 'A senha deve possuir pelo menos 8 caracteres!';
        }
        return null;
      },
    );
  }
}
