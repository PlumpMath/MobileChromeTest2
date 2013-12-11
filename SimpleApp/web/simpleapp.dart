import 'dart:html';
import 'dart:js';

void main() {
  querySelector("#sample_text_id")
    ..text = "Click me!"
    ..onClick.listen(reverseText);
}

void reverseText(MouseEvent event) {
  var text = querySelector("#sample_text_id").text;
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }
  querySelector("#sample_text_id").text = buffer.toString();

  // Javascript object proxy
  var p1 = new JsObject(context['Point'], [5, 1]);
  var b = new StringBuffer();
  print(p1['x']); // Prints 5.
  b.write(p1['x']);
  b.write(" ");
  p1['x'] = 100;
  b.write(p1['x']);
  querySelector("#test_text_id").text = b.toString();
}
