class Weather {
  String? description;
  String? icon;

  Weather({this.description, this.icon});

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        description: json['description'] as String?,
        icon: json['icon'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'description': description,
        'icon': icon,
      };
}
