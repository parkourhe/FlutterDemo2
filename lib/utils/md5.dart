import 'package:crypto/crypto.dart';
import 'dart:convert';

class TransMd5 {
  static const String key = '2vlndQ1ak2BqHDY7Q1UVjhOtjcQpXd90';

  static String _toMd5 (String data) {
    var content =new Utf8Encoder().convert(data);
    var digest = md5.convert(content);
    return digest.toString();
  }
  
  static Map<String, dynamic> generateMd5(Map data) {
    Map temp = data??{};
    final postData = jsonEncode(temp);
    List<String> tempArray = [];
    temp?.forEach((k, v) => tempArray.add('$k=$v'));
    String rs =_toMd5(_toMd5(tempArray.join('&')) + key);
    return {
      'sign': rs,
      'data': postData
    };
  }
}

