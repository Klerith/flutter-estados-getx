
import 'package:get/get.dart';
import 'package:estados/models/usuario.dart';

class UsuarioController extends GetxController {

  var existeUsuario = false.obs;
  var usuario = new Usuario().obs;

  int get profesionesCount {
    return this.usuario.value.profesiones.length;
  }

  void cargarUsuario( Usuario pUsuario ) {
    this.existeUsuario.value = true;
    this.usuario.value = pUsuario;
  }

  void cambiarEdad( int edad ) {
    this.usuario.update((val) {
      val!.edad = edad;
    });
  }

  void agregarProfesion( String profesion ) {
    this.usuario.update((val) {
      val!.profesiones = [ ...val.profesiones, profesion ];
    });
  }

}