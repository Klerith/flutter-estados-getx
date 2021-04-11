import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:estados/controllers/usuario_controller.dart';
import 'package:estados/models/usuario.dart';

class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final usuarioCtrl = Get.put( UsuarioController() );

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: Obx( 
        () => usuarioCtrl.existeUsuario.value 
              ? InformacionUsuario( usuario: usuarioCtrl.usuario.value )
              : NoInfo()
      ),

     floatingActionButton: FloatingActionButton(
       child: Icon( Icons.accessibility_new ),
      //  onPressed: () => Navigator.pushNamed(context, 'pagina2')
       onPressed: () => Get.toNamed('pagina2', arguments: {
         'nombre':'Fernando',
         'edad': 35
       })
     ),
   );
  }
}


class NoInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('No hay usuario seleccionado'),
      ),
    );
  }
}


class InformacionUsuario extends StatelessWidget {

  final Usuario usuario;

  const InformacionUsuario({
    Key? key,
    required this.usuario
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text('General', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ) ),
          Divider(),

          ListTile( title: Text('Nombre: ${ this.usuario.nombre }') ),
          ListTile( title: Text('Edad: ${ this.usuario.edad }') ),

          Text('Profesiones', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ) ),
          Divider(),

          ...usuario.profesiones.map((profesion) => ListTile(
            title: Text( profesion ),
          ))

          // ListTile( title: Text('Profesion 1') ),
          // ListTile( title: Text('Profesion 1') ),
          // ListTile( title: Text('Profesion 1') ),

        ],
      ),
    );
  }

}