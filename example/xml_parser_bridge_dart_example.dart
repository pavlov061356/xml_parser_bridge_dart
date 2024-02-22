import 'package:xml_parser_bridge_dart/src/c_import/generated_bindings.dart';
import 'package:xml_parser_bridge_dart/xml_parser_bridge_dart.dart';

void main() {
  var validator = XmlValidator("PATH_TO_LIBXMLVALIDATOR");
  print(validator.validateXml('PATH_TO_XML_FILE', 'PATH_TO_XSD_FILE'));
}
