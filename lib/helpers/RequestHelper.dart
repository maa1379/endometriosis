import 'dart:convert';

import 'package:http/http.dart' as http;

import 'PrefHelpers.dart';


enum WebControllers {
  Customers,
  ProductGroups,
  Products,
  ProductsRating,
  ProductBookmarks,
  Cities,
  Districts,
  SendingTimes,
  CustomerAddresses,
  CreditActions,
  Orders,
}
enum WebMethods {
  init,
  loginWithCode,
  loginWithPass,
  getCustomerById,
  forgot,
  allMainGroups,
  allSubGroups,
  getProductByGroup,
  registerCheckCode,
  registerWithCode,
  getMustProductDiscount,
  getProductById,
  addCommentAndRating,
  getProductsRating,
  addToBookmarkList,
  removeFromBookmarkList,
  allCities,
  getAddressByCity,
  addAddress,
  getDistrictPolygonsForMap,
  getDaysAndShifts,
  allSubSubGroups,
  bookmarkListByCustomer,
  getPaymentMethods,
  couponCodeCheck,
  deleteAddress,
  paymentHistory,
  submitAppOrder,
  trackOrder,
  addCredit,
  getOrders
}

class RequestHelper {
  static const String BaseUrl = 'https://new.negamarket.ir/admin';
  static const String ImageUrl =
      'https://new.negamarket.ir/admin/src/images/ProductGroups/';

  static String imgUrl([String path = 'ProductGroups']) =>
      'https://new.negamarket.ir/admin/src/images/$path/';
  static const String ImageUrlForProducts =
      'https://new.negamarket.ir/admin/src/images/Products/';
  static const String token = 'test';

  static Future<ApiResult> _makeRequest({
    WebControllers webController,
    WebMethods webMethod,
    Map body = const {},
  }) async {
    String url = RequestHelper._makePath(webController, webMethod);
    print("Request url: $url\nRequest body: ${jsonEncode(body)}\n");
    http.Response response = await http.post(Uri.parse(url), body: body);
    ApiResult apiResult = new ApiResult();
    if (response.statusCode == 200) {
      try {
        print(response.body);
        Map data = jsonDecode(response.body);
        apiResult.isDone = data['isDone'] == true;
        apiResult.requestedMethod = data['requestedMethod'].toString();
        apiResult.data = data['data'];
      } catch (e) {
        apiResult.isDone = false;
        print(response.body);
        print(response.body);
        print(response.body);
        print(response.body);
        print(response.body);

        apiResult.requestedMethod = webMethod.toString().split('.').last;
        apiResult.data = response.body;
      }
    } else {
      apiResult.isDone = false;
    }
    print("\nRequest url: $url\nRequest body: ${jsonEncode(body)}\nResponse: {"
        "status: ${response.statusCode}\n"
        "isDone: ${apiResult.isDone}\n"
        "requestedMethod: ${apiResult.requestedMethod}\n"
        "data: ${apiResult.data}"
        "}");
    return apiResult;
  }

  static String _makePath(WebControllers webController, WebMethods webMethod) {
    return "${RequestHelper.BaseUrl}/${webController.toString().split('.').last}/API/${'_${webMethod.toString().split('.').last}'}?token=${RequestHelper.token}";
  }

  static Future<ApiResult> initLoginRegister({String mobile}) async {
    return await RequestHelper._makeRequest(
      webController: WebControllers.Customers,
      webMethod: WebMethods.init,
      body: {'mobile': mobile},
    ).timeout(
      Duration(seconds: 50),
    );
  }
}

class ApiResult {
  bool isDone;
  String requestedMethod;
  dynamic data;

  ApiResult({
    this.isDone,
    this.requestedMethod,
    this.data,
  });
}
