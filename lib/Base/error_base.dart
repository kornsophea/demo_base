import 'package:get/get_connect/http/src/exceptions/exceptions.dart';
import 'package:getx_base/helper/dialog_helper.dart';

class ErrorBase {
  static void handleError(dynamic error) {
    if (error is String) {
      DiologHelper.showError(title: "Error", desciption: error);
    } else {
      if (error is Map) {
        String message = error['message'];
        DiologHelper.showError(title: "Error", desciption: message);
      } else if (error is UnauthorizedException) {
        DiologHelper.showError(title: "Error", desciption: "unauthenticated.");
      } else {
        final obj = error.message ?? error.toString();
        DiologHelper.showError(title: "Error", desciption: obj);
      }
    }
  }
}
