String vertMirror(String str) {
  return str.split("\n").map((e) => e.split('').reversed.join()).join('\n');
}

String horMirror(String str) {
  return str.split("\n").reversed.join('\n');
}

String oper(String fct(String str), String s) {
  return fct(s);
}
