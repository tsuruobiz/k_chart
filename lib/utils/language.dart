enum Language {
  /// Chinese
  chinese,

  /// English
  english,

  /// Japanese
  japanese,
}

extension LanguageEx on Language {
  List<String> get infoNames {
    switch (this) {
      case Language.chinese:
        return [
          "时间",
          "开",
          "高",
          "低",
          "收",
          "涨跌额",
          "涨跌幅",
          "成交额",
        ];
      case Language.english:
        return [
          "Date",
          "Open",
          "High",
          "Low",
          "Close",
          "Change",
          "Change%",
          "Amount"
        ];
      case Language.japanese:
        return [
          "日付",
          "始値",
          "高値",
          "低値",
          "終値",
          "前日比額",
          "前日比率",
          "出来高",
        ];
    }
    assert(false, 'Language Undefined $this');
    return [''];
  }
}
