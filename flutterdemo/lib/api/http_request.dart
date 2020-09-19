import 'package:dio/dio.dart';

import 'http_config.dart';

class HttpRequest {
  //1.创建Dio实例
  static BaseOptions baseOptions = BaseOptions(
    baseUrl: BASE_URL,
    connectTimeout: TIME_OUT,
  );
  static var dio = Dio(baseOptions);

  /// 参数列表:
  /// 必传: url
  /// 可选参数: type(get, post请求)
  static Future request(String url, {String type = "get", Map<String, dynamic> params}) async {
    //配置请求时的默认参数
    var options = Options(method: type);

    //2.发送网络请求(异步)
    try {
      var response = await dio.request(url, options: options, queryParameters: params);
      return response;
    } on DioError catch (err) {
      throw err;
    }
  }
}
