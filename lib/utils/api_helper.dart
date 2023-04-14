import 'package:http/http.dart' as http;

class ApiHelper
{
  Future<String> addNewProductAoi()
  async {
    String link = "https://apidatahub.000webhostapp.com/MyShop/API/adddataapi.php";
    Uri uri = Uri.parse(link);
    var response = await http.post(uri,body: {
      "p_name": "iphone 12pro",
      "p_rate": "4",
      "p_price": "100000",
      "p_offer": "10000",
      "p_desc": "256GB",
      "p_category": "mobile",
    });

    if(response.statusCode == 200)
      {
        return "Succes";
      }
    return "Failed";
  }
}