void main() {
  Reccursion rec = Reccursion();
  print(rec.isFact(5));

  print(rec.prime(7));
}

class Reccursion {
  int fact(num) {
    if (num == 0) {
      return 1;
    } else {
      return num * fact(num - 1);
    }
  }

   prime(num, [int divi = 2]) {
    if (num < 2) {
      return false;
    }
    if (num % divi == 0) {
      return false;
    }

    if (divi * divi > num) {
      return true;
    }
    return prime(num,divi+1);
  }

  isFact(numb){
    if (numb ==0) {
      return 1;
    }else{
      return numb*isFact(numb-1);
    }
  }
}
