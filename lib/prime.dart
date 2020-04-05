class PrimeGenerator {
  List<int> _primes = new List();

  PrimeGenerator() {
    _primes.add(2);
    _primes.add(3);
  }

  void _generatePrime() {
    bool validPrime = true;
    for(int i = _primes[_primes.length - 1] + 1; true; i++) {
      validPrime = true;
      for(int j = 0; _primes[j] <= i ~/ 2 && j < _primes.length; j++) {
        if(i % _primes[j] == 0) {
          validPrime = false;
          break;
        }
      }
      if(validPrime) {
        _primes.add(i);
        return;
      }
    }
  }

  int getPrime(int prime_index) {
    while(_primes.length < prime_index) {
      _generatePrime();
    }
    return _primes[prime_index - 1];
  }

}