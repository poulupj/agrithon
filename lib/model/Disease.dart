class Disease {
String name;
String path;
String desc;
String rem;
Disease({this.name,this.path,this.desc,this.rem});

factory Disease.fromJson(Map<String, dynamic> json) {
  return Disease(
      name : json['name'],
      path: json['path'],
      desc: json['desc'],
      rem:json['rem']
  );
}
}