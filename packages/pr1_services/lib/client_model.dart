/*import 'dart:convert';

Client clientFromJson(String str) {
    final jsonData = json.decode(str);
    return Client.fromJson(jsonData);
}

String clientToJson(Client data) {
    final dyn = data.toJson();
    return json.encode(dyn);
}

class Client {
    int id;
    String links;
    String lastName;
   
//данные для бд 
    Client({
        required this.id,
        required this.links,
        required this.lastName,
        
    })
// конструктор
    // ignore: empty_constructor_bodies
    factory Client.fromJson(Map<String, dynamic> json) => Client(
        id: json["id"],
        links: json["links"],
        lastName: json["last_name"],
        
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "links": links,
        "last_name": lastName,
        
    };
}*/