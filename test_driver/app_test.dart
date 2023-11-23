import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
void main(){
  prueba1();
  

}

void prueba1(){
  late FlutterDriver driver;
    setUpAll(() async{
    driver = await FlutterDriver.connect();
    });
    final botonMasInfo = find.byValueKey("mas info"); //boton para mostrar mas informacion del curso
    final SerializableFinder scrollPrincipal = find.byValueKey("scrollPrincipal");// scroll de la pantalla inicial
    test('Mostrar informacion del curso', () async {
      await driver.waitFor(scrollPrincipal, timeout: Duration(seconds: 60));
      await driver.scroll(scrollPrincipal, 0, -400, Duration(milliseconds: 500), timeout: Duration(seconds: 60));
      await driver.waitFor(botonMasInfo);
      await driver.tap(botonMasInfo);


    });
}


void prueba2(){
    late FlutterDriver driver;
    setUpAll(() async{
    driver = await FlutterDriver.connect();
    });
    final botonMasInfo = find.byValueKey("mas info");
    final SerializableFinder scrollPrincipal = find.byValueKey("scrollPrincipal");
    final SerializableFinder elementoInicialCursos = find.byValueKey("scrollLisViewVistaCursos");
    final campoComentario = find.byValueKey('escribirComentario');
    final botonComentar = find.byValueKey('enviarComentario');


    test('Crear comentario', () async {
      await driver.waitFor(scrollPrincipal, timeout: Duration(seconds: 60));
      await driver.scroll(scrollPrincipal, 0, -400, Duration(milliseconds: 500), timeout: Duration(seconds: 60));
      await driver.waitFor(botonMasInfo);
      await driver.tap(botonMasInfo);
      await driver.scroll(elementoInicialCursos, 0, -1000, Duration(milliseconds: 500));
      await driver.tap(campoComentario);
      await driver.enterText("prueba comentario");
      await driver.tap(botonComentar);
    });

}
void prueba3(){
    late FlutterDriver driver;
    setUpAll(() async{
    driver = await FlutterDriver.connect();
    });
    
    final botonPerfil = find.byValueKey('ver perfil');

   test('Ver mis cursos', () async {
      await driver.waitFor(botonPerfil, timeout: const Duration(seconds: 200));
      await driver.tap(botonPerfil);
    });

}
void prueba4(){
    late FlutterDriver driver;
    setUpAll(() async{
    driver = await FlutterDriver.connect();
    });
    final botonMasInfo = find.byValueKey("mas info");
    final SerializableFinder scrollPrincipal = find.byValueKey("scrollPrincipal");
    final SerializableFinder elementoInicialCursos = find.byValueKey("scrollLisViewVistaCursos");
    final botonInscribirse = find.byValueKey('btnInscribirse');

   test('Inscribirse en el curso', () async {
      await driver.scroll(scrollPrincipal, 0, -400, Duration(milliseconds: 500), timeout: Duration(seconds: 60));
      await driver.tap(botonMasInfo);
      await driver.scroll(elementoInicialCursos, 0, -400, Duration(milliseconds: 500));
      await driver.waitFor(botonInscribirse);
      await driver.tap(botonInscribirse);



    });

}





