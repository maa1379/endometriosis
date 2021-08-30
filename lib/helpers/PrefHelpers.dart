import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'Prefs.dart';

class PrefHelpers {
  static Future<dynamic> getName() async {
    return await Prefs.get('name');
  }

  static Future<void> setName(String name) async {
    await Prefs.set('name', name);
  }

  static Future<void> setCurrentValue(String name) async {
    await Prefs.set('current', name);
  }

  static Future<void> setRole(String name) async {
    await Prefs.set('role', name);
  }

  static Future<void> setCoins(String name) async {
    await Prefs.set('coin', name);
  }

  static Future<void> setUserId(userId) async {
    await Prefs.set('userId', userId);
  }

  static Future<String> getUserId() async {
    return await Prefs.get('userId');
  }

  static Future<String> getCoins() async {
    return await Prefs.get('coin');
  }

  static Future<String> getRole() async {
    return await Prefs.get('role');
  }

  static Future<String> getCurrentValue() async {
    return await Prefs.get('current');
  }

  static Future<void> setNotification(String name) async {
    await Prefs.set('notification', name);
  }

  static Future<String> getNotification() async {
    return await Prefs.get('notification');
  }

  static Future<void> setTransAction(String name) async {
    await Prefs.set('transaction', name);
  }

  static Future<String> getTransAction() async {
    return await Prefs.get('transaction');
  }

  static Future<void> setAccount(String name) async {
    await Prefs.set('account', name);
  }

  static Future<String> getAccount() async {
    return await Prefs.get('account');
  }

  static Future<void> setIncome(String name) async {
    await Prefs.set('income', name);
  }

  static Future<String> getIncome() async {
    return await Prefs.get('income');
  }

  static Future<void> setToken(String data) async {
    await Prefs.set('token', data);
  }

  static setMainData(String data) async {
    await Prefs.set('mainData', data);
  }
  //
  // static Future<String> setMainData(t) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setString('mainData' , jsonEncode(t));
  // }

  static Future<void> setMobile(data) async {
    await Prefs.set('mobile', data);
  }

  static Future<void> setProfile(String data) async {
    await Prefs.set('profile', data);
  }

  static Future<String> getMobile() async {
    return await Prefs.get('mobile');
  }

  static Future<String> getProfile() async {
    return await Prefs.get('profile');
  }

  static Future<dynamic> getToken() async {
    return await Prefs.get('token');
  }

  static Future<dynamic> getMainData() async {
    return await Prefs.get('mainData');
  }

  static Future<bool> logOut() async {
    await Prefs.set('mobile', null);
    await Prefs.set('transmissionId', null);
    await Prefs.set('transmission', null);
    await Prefs.set('mainData', null);
    await Prefs.set('income', null);
    return await Prefs.set('token', null);
  }

  static setTransmissionId(int transmissionId) async {
    await Prefs.set('transmissionId', transmissionId.toString());
  }

  static Future<dynamic> getTransmission() async {
    return await Prefs.get('transmission');
  }

  // static Future<List<TransmissionModel>> getTransmission() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var s =  prefs.getString('transmission');
  //   List<TransmissionModel> l = jsonDecode(s);
  //   // for(var i in jsonDecode(s))
  //   // {
  //   //   l.add(TransmissionModel.fromJson(i));
  //   // }
  //   return l;
  // }
  static Future<String> setTransmission(t) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('transmission', jsonEncode(t));
  }

  static Future<dynamic> getTotalData() async {
    return await Prefs.get('totalData');
  }

  static Future<void> setTotalData(String jsonEncode) async {
    await Prefs.set('totalData', jsonEncode);
  }

  static void setCity(String city) async {
    await Prefs.set('city', city);
  }

}
