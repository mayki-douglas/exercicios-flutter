class Person {
  String name;
  String lastName;
  String email;
  int age;

  int calculateAgeInMonths(){
    return this.age * 12;
  }

  int calculateAgeInWeeks(){
    return this.age * 56;
  }

  int calculateAgeInDays(){
    return this.age * 365;
  }

  int calculateAgeInHours(){
    return this.age * 8760;
  }

  int calculateAgeInMinutes(){
    return this.age * 525600;
  }
  @override
  String toString() {
    return 'Nome: $name $lastName \ne-mail: $email \nIdade: $age \nIdade em Meses: ${this.calculateAgeInMonths()} \nIdade em Semanas: ${this.calculateAgeInWeeks()} \nIdade em Dias: ${this.calculateAgeInDays()} \nIdade em Horas: ${this.calculateAgeInHours()} \nIdade em Minutos: ${calculateAgeInMinutes()}';
  }
}