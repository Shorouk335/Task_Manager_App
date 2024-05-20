import 'package:dio/dio.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:task_manager_app/shared/widgets/showSmartDialog.dart';

class DioService {

  Dio mydio = Dio();

  DioService({String baseUrl = ""}) {
    mydio = Dio(
      BaseOptions(
      baseUrl: baseUrl,
      headers: {
        "Accept": "application/json",
        'Content-Type': "application/json",
      },
      contentType: "application/json",
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
    ))
      ..interceptors.add(
        LogInterceptor(
          responseBody: true,
          requestBody: true,
        ),
      );
  }


  Future<ApiResponse> getData({
    required String url,
    Map<String, dynamic>? queryParameters,
    bool isLoading = true,
  }) async {
    try {
      if (isLoading) {
        ShowSmartDialog.show();
      }

      final response = await mydio.get(url, queryParameters: queryParameters);
      if (isLoading) {
        ShowSmartDialog.dismis();
      }
      return ApiResponse(response: response, isError: false);
    } on DioException catch (e) {
      return HandleException(e: e);
    }
  }

  Future<ApiResponse> postData({
    required String url,
    required Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    bool isLoading = true,
    bool isFormData = false,
  }) async {
    try {
      if (isLoading) {
        ShowSmartDialog.show();
      }

      final response = await mydio.post(url,
          queryParameters: queryParameters,
          data: isFormData ? FormData.fromMap(body ?? {}) : body);
      if (isLoading) {
        ShowSmartDialog.dismis();
      }
      return ApiResponse(response: response, isError: false);
    } on DioException catch (e) {
      return HandleException(e: e);
    }
  }

  Future<ApiResponse> updateData(
      {required String url,
      required Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      bool isLoading = true,

      bool isFormData = false}) async {
    try {
      if (isLoading) {
        ShowSmartDialog.show();
      }

      final response = await mydio.put(url,
          queryParameters: queryParameters,
          data: isFormData ? FormData.fromMap(body ?? {}) : body);
      if (isLoading) {
        ShowSmartDialog.dismis();
      }
      return ApiResponse(response: response, isError: false);
    } on DioException catch (e) {
      return HandleException(e: e);
    }
  }

  Future<ApiResponse> deleteData({
    required String url,
    bool isLoading = true,
  }) async {
    try {
      if (isLoading) {
        ShowSmartDialog.show();
      }

      final response = await mydio.delete(url);
      if (isLoading) {
        ShowSmartDialog.dismis();
      }
      return ApiResponse(response: response, isError: false);
    } on DioException catch (e) {
      return HandleException(e: e);
    }
  }

  showErrorDialog(DioException e) {
    SmartDialog.showToast(e.response?.data["message"] ?? "Unkown error");
  }

  HandleException({
    required DioException e,
  }) {
    ShowSmartDialog.dismis();
    if (DioExceptionType.receiveTimeout == e.type ||
        DioExceptionType.connectionTimeout == e.type) {
      showErrorDialog(e);
    } else if (DioExceptionType.sendTimeout == e.type) {
      showErrorDialog(e);
    } else if (DioExceptionType.cancel == e.type) {
      showErrorDialog(e);
    } else if (DioExceptionType.badResponse == e.type) {
      SmartDialog.showToast(
          e.response?.data["message"] ?? "لا يمكن الوصول للسيرفير");
      if (e.response!.statusCode == 401) {
        // Utils.removeToken();
      }
    } else if (DioExceptionType.unknown == e.type) {
      if (e.message?.contains('SocketException') ?? false) {
        showErrorDialog(e);
      }
    } else {}

    return ApiResponse(isError: true);
  }

}


class ApiResponse {
  bool? isError;
  Response? response;
  ApiResponse({this.isError, this.response});
}
