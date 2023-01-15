class Crypto {
  final String id;
  final String name;
  final String symbol;
  final String priceUsd;
  final String priceBtc;
  final String marketCapUsd;
  final double percentChange24H;
  final double percentChange7D;
  final String symbolUrl;

  Crypto({
    required this.id,
    required this.name,
    required this.symbol,
    required this.priceUsd,
    required this.priceBtc,
    required this.marketCapUsd,
    required this.percentChange24H,
    required this.percentChange7D,
    required this.symbolUrl,
  });
}
