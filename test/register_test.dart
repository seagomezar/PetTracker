import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/register.dart'; // Asegúrate de usar el camino correcto a tu archivo principal

void main() {
  testWidgets('Create Account form test', (WidgetTester tester) async {
    // Cargar la segunda página directamente
    await tester.pumpWidget(MaterialApp(home: PetHealthTrackCreateAccount()));

    // Verificar que el texto 'Add Vaccine' está presente
    expect(find.text('Add Vaccine'), findsOneWidget);

    // Verificar que el texto 'Track vaccinations, set reminders' está presente
    expect(find.text('Track vaccinations, set reminders'), findsOneWidget);

    // Verificar que el texto 'Create Account' está presente
    expect(find.text('Create Account'), findsOneWidget);

    // Verificar que los campos de texto están presentes
    expect(find.byType(TextField), findsNWidgets(5));

    // Verificar que los campos de texto tienen las etiquetas correctas
    expect(find.widgetWithText(TextField, 'Email'), findsOneWidget);
    expect(find.widgetWithText(TextField, 'Password'), findsOneWidget);
    expect(find.widgetWithText(TextField, 'Name'), findsOneWidget);
    expect(find.widgetWithText(TextField, 'Pet’s Name'), findsOneWidget);
    expect(find.widgetWithText(TextField, 'Last Vaccine Date'), findsOneWidget);

    // Verificar que el botón 'Next' está presente
    expect(find.text('Next'), findsOneWidget);

    // Simular entrada de texto en los campos
    await tester.enterText(find.widgetWithText(TextField, 'Email'), 'test@example.com');
    await tester.enterText(find.widgetWithText(TextField, 'Password'), 'password123');
    await tester.enterText(find.widgetWithText(TextField, 'Name'), 'John Doe');
    await tester.enterText(find.widgetWithText(TextField, 'Pet’s Name'), 'Buddy');
    await tester.enterText(find.widgetWithText(TextField, 'Last Vaccine Date'), '2024-06-01');

    // Verificar que el texto fue ingresado correctamente
    expect(find.text('test@example.com'), findsOneWidget);
    expect(find.text('password123'), findsOneWidget);
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('Buddy'), findsOneWidget);
    expect(find.text('2024-06-01'), findsOneWidget);

    // Simular un toque en el botón 'Next'
    await tester.tap(find.text('Next'));
    await tester.pump();

    // Aquí puedes agregar verificaciones adicionales para el resultado esperado después de pulsar el botón
  });
}
