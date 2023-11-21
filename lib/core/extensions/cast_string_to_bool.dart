extension CastStringToBool on String {
  bool sToBool() {
    if (toLowerCase() == 'true' || toLowerCase() == '1') {
      return true;
    } else {
      return (toLowerCase() == 'false' || toLowerCase() == '0')
          ? false
          : throw UnsupportedError('CastStringToBool: Unsupported String');
    }
  }
}
