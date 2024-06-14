// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:myapp/main.dart';

void main() {
  testWidgets('PetHealthTrack home screen test', (WidgetTester tester) async {
    // Cargar la app
    await tester.pumpWidget(PetHealthTrackApp());

    // Verificar que el texto 'PetHealthTrack' está presente
    expect(find.text('PetHealthTrack'), findsOneWidget);

    // Verificar que el texto 'Your pet’s health companion' está presente
    expect(find.text('Your pet’s health companion'), findsOneWidget);

    // Verificar que el botón 'Get Started' está presente
    expect(find.text('Get Started'), findsOneWidget);

    // Verificar que la imagen del ícono de la pata está presente
    expect(find.byType(Image), findsOneWidget);

    // Verificar que el contenedor circular está presente
    expect(find.byType(Center), findsWidgets);
    
    // Verificar la acción del botón 'Get Started'
    await tester.tap(find.text('Get Started'));
    await tester.pump();

    // Puedes agregar más verificaciones aquí para el resultado esperado después de pulsar el botón
  });
}
