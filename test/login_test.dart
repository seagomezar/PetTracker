import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/login.dart'; // Asegúrate de usar el camino correcto a tu archivo principal
// Asegúrate de usar el camino correcto a tu archivo principal

void main() {
  testWidgets('Login page test', (WidgetTester tester) async {
    // Cargar la página de inicio de sesión directamente
    await tester.pumpWidget(MaterialApp(home: PetHealthTrackLogin()));

    // Verificar que el texto 'Login' está presente en el encabezado
    expect(find.text('Login'), findsNWidgets(2)); // Finds two 'Login' texts (one in the image and one in the button)

    // Verificar que el texto 'Welcome back, please login' está presente
    expect(find.text('Welcome back, please login'), findsOneWidget);

    // Verificar que el texto 'Login to your account' está presente
    expect(find.text('Login to your account'), findsOneWidget);

    // Verificar que los campos de texto están presentes
    expect(find.byType(TextField), findsNWidgets(2));

    // Verificar que los campos de texto tienen las etiquetas correctas
    expect(find.widgetWithText(TextField, 'Email'), findsOneWidget);
    expect(find.widgetWithText(TextField, 'Password'), findsOneWidget);

    // Verificar que el botón 'Login' está presente
    final loginButtonFinder = find.widgetWithText(ElevatedButton, 'Login');
    expect(loginButtonFinder, findsOneWidget);

    // Simular entrada de texto en los campos
    await tester.enterText(find.widgetWithText(TextField, 'Email'), 'test@example.com');
    await tester.enterText(find.widgetWithText(TextField, 'Password'), 'password123');

    // Verificar que el texto fue ingresado correctamente
    expect(find.text('test@example.com'), findsOneWidget);
    expect(find.text('password123'), findsOneWidget);

    // Simular un toque en el botón 'Login'
    await tester.tap(loginButtonFinder);
    await tester.pump();

    // Aquí puedes agregar verificaciones adicionales para el resultado esperado después de pulsar el botón
  });
}
