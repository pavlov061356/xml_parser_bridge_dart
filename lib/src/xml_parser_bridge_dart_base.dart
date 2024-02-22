import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:xml_parser_bridge_dart/src/c_import/generated_bindings.dart';

/// Class used to use the native library from Dart to validate xmls
class XmlValidator {
  String libraryPath;

  late NativeLibrary _nativeLibrary;

  XmlValidator(this.libraryPath) {
    _nativeLibrary = NativeLibrary(DynamicLibrary.open(libraryPath));
  }

  /// Validates an XML file against an XSD file.
  ///
  /// Returns the error message if the validation fails, or null if the validation passes.
  String? validateXml(String xmlPath, String xsdPath) {
    var ptr = _nativeLibrary.validateXml(
        xmlPath.toNativeUtf8().cast(), xsdPath.toNativeUtf8().cast());

    if (ptr != nullptr) {
      return ptr.cast<Utf8>().toDartString();
    } else {
      return null;
    }
  }
}
