extension CastStringToBool on String {
  bool toBoolean() {
    if (this.toLowerCase() == 'true' || this.toLowerCase() == '1') {
      return true;
    } else {
      return (this.toLowerCase() == 'false' || this.toLowerCase() == '0')
          ? false
          : throw UnsupportedError('Unsupported String');
    }
  }
}
