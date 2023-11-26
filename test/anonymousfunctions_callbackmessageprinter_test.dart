import 'package:anonymousfunctions_callbackmessageprinter/anonymousfunctions_callbackmessageprinter.dart';
import 'package:test/test.dart';

void main() {
  group('Callback Message Printer', () {
    test('Callback prints the correct message', () {
      String printedMessage = '';

      // Pass the anonymous function as a callback
      onButtonPress((message) {
        mockPrint(message);
      });

      // Test that the correct message is printed
      expect(printedMessage, equals('Test Message'));
    });

    test('Callback with different message', () {
      String printedMessage = '';

      void onButtonPress(void Function(String) callback) {
        callback('Another Message');
      }

      onButtonPress((message) {
        mockPrint(message);
      });

      expect(printedMessage, equals('Another Message'));
    });

    test('No callback invocation results in no message', () {
      String printedMessage = '';

      void onButtonPress(void Function(String)? callback) {
        if (callback != null) {
          callback('Message');
        }
      }

      // Not passing a callback
      onButtonPress(null);

      expect(printedMessage, isEmpty);
    });
  });
}
