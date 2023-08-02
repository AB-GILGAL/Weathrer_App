class Main {
  double? temp;
  double? feelsLike;
  int? pressure;
  int? humidity;

  Main({
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
  });

  factory Main.fromJson(Map<String, dynamic> json) => Main(
        temp: (json['temp'] as num?)?.toDouble(),
        feelsLike: (json['feels_like'] as num?)?.toDouble(),
        pressure: json['pressure'] as int?,
        humidity: json['humidity'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'temp': temp,
        'feels_like': feelsLike,
        'pressure': pressure,
        'humidity': humidity,
      };
}
