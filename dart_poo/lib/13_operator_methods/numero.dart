//entendi foi porra nenhuma desse operator methods
class Numero {
  int i;
  Numero(this.i);

  Numero operator +(Numero numero2) {
    return Numero(i + numero2.i);
  }
}
