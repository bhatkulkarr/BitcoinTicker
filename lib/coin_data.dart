import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bitcoin_ticker/Networking.dart';
const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = '61AB8603-EF1F-4942-9210-BD1919252301';

class CoinData {
  //TODO: Create your getCoinData() method here

  Future <dynamic> getCoinData (String Currencystr,String crypto) async
  {
    String url = "$coinAPIURL/$crypto/$Currencystr?apikey=$apiKey";
    NetworkHelper networkHelper = new NetworkHelper(url: url);
    var coindata = await networkHelper.getData();
    return coindata;
  }
}
