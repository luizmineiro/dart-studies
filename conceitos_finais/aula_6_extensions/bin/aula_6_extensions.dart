void main() {
  "Alick".dizerNome();
}


extension DizerNomeString on String {
  void dizerNome(){
    print("Ola meu nome é $this");
  }
}