/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/anonymousfunctions_callbackmessageprinter_base.dart';

/*
Implement a function onButtonPress that takes a callback function 
as a parameter. This callback function should be an anonymous function 
that receives a String message and prints it. 
The onButtonPress function simulates a button press event and 
invokes the callback with a custom message.
 */
String Function(String x) mockPrint = (x) {
  print(x);
  return x;
};

onButtonPress(Function(String x) callback) {
  callback();
}
