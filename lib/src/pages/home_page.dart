import 'package:flutter/material.dart';
import 'package:preferencias_usuario_app/src/pages/settings_page.dart';
import 'package:preferencias_usuario_app/src/share_preferences/preferencias_usuario.dart';
import 'package:preferencias_usuario_app/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = new PreferenciasUsuario();
  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = HomePage.routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundario:${prefs.colorSecundario}'),
          Divider(),
          Text('Género:${prefs.genero}'),
          Divider(),
          Text('Nombre Uusario:${prefs.nombre}'),
          Divider(),
        ],
      ),
    );
  }
}
