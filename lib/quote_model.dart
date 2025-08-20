class QuoteModel {
  String quote;
  String author;
  int id;

  QuoteModel({required this.quote, required this.author, required this.id});

  ///fromJson
  factory QuoteModel.fromJson(Map<String, dynamic> json) {
    return QuoteModel(
      quote: json['quote'],
      author: json['author'],
      id: json['id'],
    );
  }
}

class QuoteDataModel {
  int limit;
  int skip;
  int total;
  List<QuoteModel> quotes;

  QuoteDataModel({
    required this.limit,
    required this.skip,
    required this.total,
    required this.quotes,
  });

  factory QuoteDataModel.fromJson(Map<String, dynamic> json){
    List<QuoteModel> mQuotes = [];

    for(Map<String, dynamic> eachQuote in json['quotes']){
      mQuotes.add(QuoteModel.fromJson(eachQuote));
    }


    return QuoteDataModel(
        limit: json['limit'],
        skip: json['skip'],
        total: json['total'],
        quotes: mQuotes);
  }


}
