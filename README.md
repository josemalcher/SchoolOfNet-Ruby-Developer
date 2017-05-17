# Iniciando com Ruby

Resumo do curso:

https://www.schoolofnet.com/curso-iniciando-com-ruby/

---

## <a name="indice">Índice Iniciando com Ruby</a>
- [Introdução](#parte1)
- [Nosso ambiente](#parte2)
- [Um pouco sobre a história](#parte3)
- [Hello World Ruby](#parte4)
- [Operadores](#parte5)
- [Condicionais](#parte6)
- [Métodos e blocks](#parte7)
- [Tipos](#parte8)
- [Iterações](#parte9)
- [Trabalhando com coleções](#parte10)
- [Input e Output (IO)](#parte11)
- [Exceções](#parte12)
- [Classes](#parte13)
- [Finalizando](#parte14)

## Índice Ruby Orientado a Objetos

- [Introdução](#parte15)
- [Orientação a objetos](#parte16)
- [Iniciando o Projeto e Curiosidade](#parte17)
- [Revisão sobre classes](#parte18)
- [Instance variable e class variable](#parte19)
- [Métodos e atributos](#parte20)
- [Cotrole de Acesso e Construtores](#parte21)
- [Encapsulamento](#parte22)
- [Heranças](#parte23)
- [Overides](#parte24)
- [Overloading e ducking type](#parte25)
- [Finalizando](#parte26)

---

## <a name="parte1">Introdução</a>

Ruby é uma linguagem de programação interpretada multiparadigma, de tipagem dinâmica e forte, com gerenciamento de memória automático, originalmente planejada e desenvolvida no Japão em 1995, por Yukihiro "Matz" Matsumoto, para ser usada como linguagem de script.

[https://www.ruby-lang.org/pt/](https://www.ruby-lang.org/pt/)

[Ruby em Vinte Minutos](https://www.ruby-lang.org/pt/documentation/quickstart/)


[Voltar ao Índice](#indice)

---

## <a name="parte2">Nosso ambiente</a>


["The Best Environment for Rails on Windows"](http://www.akitaonrails.com/2016/07/26/the-year-of-linux-on-the-desktop-it-s-usable#best-windows-dev-env)

[O Melhor Ambiente Windows para Rails](http://www.akitaonrails.com/2009/01/12/o-melhor-ambiente-windows-para-rails)

[Configurando Ruby, Rails, MySQL, PostgreSQL e Git no Ubuntu](https://nandovieira.com.br/configurando-ruby-rails-mysql-postgresql-git-no-ubuntu)

[Configurando Ruby, Rails, MySQL e Git no Windows](https://nandovieira.com.br/configurando-ruby-rails-mysql-e-git-no-windows)

[Instalando o Ruby On Rails no Windows](http://www.devmedia.com.br/instalando-o-ruby-on-rails-no-windows/20472)

[Voltar ao Índice](#indice)

---

## <a name="parte3">Um pouco sobre a história</a>

A linguagem Ruby foi concebida em 24 de fevereiro de 1993 por Yukihiro Matsumoto, que pretendia criar uma nova linguagem que balanceava programação funcional com a programação imperativa. Matsumoto afirmou: "Eu queria uma linguagem de script que fosse mais poderosa do que Perl, e mais orientada a objetos do que Python.

[Sobre o Ruby](https://www.ruby-lang.org/pt/about/)

O Ruby é uma linguagem com um cuidadoso equilíbrio. O seu criador, Yukihiro “Matz” Matsumoto, uniu partes das suas linguagens favoritas (Perl, Smalltalk, Eiffel, Ada e Lisp) para formar uma nova linguagem que equilibra a programação funcional com a programação imperativa.

Ele disse com frequência que está “tentando tornar o Ruby natural, não simples”, de uma forma que reflita a vida.

Elaborando sobre isto, acrescenta:

O Ruby é simples na aparência, mas muito complexo no interior, tal como o corpo humano.



[Voltar ao Índice](#indice)

---

## <a name="parte4">Hello World Ruby </a>

Código da aula

```ruby
# puts 'Olá mundo'
# print 'Olá Mundo'
# printf('Olá Mundo')

#  var // local
# @var // instance
# $var //global

puts "Qual é seu nome? "
$name = STDIN.gets
puts 'Olá '+ $name + ' Bem vindo '
```


[Voltar ao Índice](#indice)

---

## <a name="parte5">Operadores</a>

```ruby
number1 = 1
number2 = 2

puts 'Number 1: '
number1 = STDIN.gets
number1 = number1.to_i

puts 'Number 2: '
number2 = STDIN.gets
number2 = number2.to_i

total = number1 + number2
# total = number1 - number2
# total = number1 * number2
# total = number1 / number2
# total = number1 ** number2
puts total
puts 'Resultado' + total.to_s

# puts "total da soma #{total}"

# Comparações


puts number1 == number2
puts number1 != number2

puts number1.equal? number2 # verifica o tipo
puts number1.eql? number2 # verifica o tipo e objeto id é igual

puts number1 > number2

puts number1 <=> number2 # 1 0 -1 união das funções

```

[operadores em ruby e seus metodos](http://saulosantiago.js.org/ruby/operadores-em-ruby-e-seus-metodos/)


[Voltar ao Índice](#indice)

---

## <a name="parte6">Condicionais</a>

```ruby
$age = 0
$name = ''
$result = ''

puts 'What is your name ?'
$name = STDIN.gets

puts 'How old are you? '
$age - STDIN.gets.to_i

$result = if($age <= 20)
            'to old'
          else
            'to young'
          end
# ternaria
# $result = ($age <= 20) ? 'jovem' : 'velho!'

=begin
if ($age <= 20)
  puts 'To old'
else
  puts 'To young'
end
=end

=begin
if ($age >= 20)
  puts 'To old'
elsif ($age <= 18)
  puts 'To young'
end
=end

$car_is_on = true
# puts 'Car : ' unless $car_is_on # é executado se for false
unless $car_is_on
  puts 'car !!'
end

# Case
$week_day = 2
case $week_day
  when $week_day = 1
    puts 'Monday'
  when $week_day = 2
    puts 'Tuestday'
  when $week_day = 3
    puts 'Wednesday'
  else
    puts 'invalid option'
end

```
[Estruturas Condicionais](https://unbcjr.gitbooks.io/learning-ruby/content/estruturas_condicionais.html)

[Estruturas de decisão e repetição no Ruby](http://www.devmedia.com.br/estruturas-de-decisao-e-repeticao-no-ruby/33679)

[Ruby – Passo 4: Estruturas condicionais](https://elizbsi.wordpress.com/2012/12/02/ruby-passo-4-estruturas-condicionais/)


[Voltar ao Índice](#indice)

---

## <a name="parte7">Métodos e blocks</a>

```ruby
# Methodos
$number = 0

puts "Number: "
$number = STDIN.gets.to_i

def fatorial(number)
  if number == 0
    return 1
  else
    return number * fatorial(number - 1)
  end
end

$result = fatorial($number)

puts $result


# blocks

def block_1()
  puts 'Dentro do bloco!'
  yield
end

block_1 {puts 'Esse é meu primeiro bloco'}
```
[Blocos](https://unbcjr.gitbooks.io/learning-ruby/content/blocos.html)

[Ruby – Passo 6: Métodos](https://elizbsi.wordpress.com/2012/12/02/ruby-passo-6-metodos/)

[Conceitos na prática: Ruby block (yield)](https://brizeno.wordpress.com/2013/10/01/conceitos-na-pratica-ruby-block-yield/)

[Anatomia de Blocks/Closures em Ruby](http://www.akitaonrails.com/2007/11/30/anatomia-de-ruby-blocks-closures)

[Blocks in Ruby](http://radar.oreilly.com/2015/09/blocks-in-ruby.html)

[Voltar ao Índice](#indice)



---

## <a name="parte8">Tipos</a>

```ruby
my_string = 'This is a new teste from String class'

puts my_string.reverse

range = (2..4).to_a
puts range

teacher = Array.[]('L', 'LC', 'W')
teacher_2 = Array.[]('J', 'JC', 'K')

teacher.concat(teacher_2)

puts teacher

peoples = Hash["jose"=>10, "Luiz"=> 50, "Maria"=>5]
puts peoples
puts "#{peoples['jose']}"
```

[Tipos de Dados](https://unbcjr.gitbooks.io/learning-ruby/content/tipos_de_dados.html)

[Ruby – Passo2: Prints, Comentários e Tipos básicos](https://elizbsi.wordpress.com/2012/11/30/ruby-passo2-prints-comentarios-e-tipos-basicos/)



[Voltar ao Índice](#indice)

---

## <a name="parte9">Iterações</a>

```ruby
$init = 0
$max = 10

# while $init < $max do
#   puts 'iteration'
#   $init += 1
# end

# begin
#   puts 'iteração'
#   $init += 1
# end while $init < $max

for $init in 0..10
  $max *= 2
end
puts $max

$arr = ['item 1','item 2', 'item 3']
# for item in $arr
for item in (0..$arr.length)
  puts $arr[item]
end

$arr.each do |a|
  puts a
end

item = 0
until item > $arr.length do
  # puts item
  puts $arr[item]
  item += 1
end

```

[Estruturas de Repetição](https://unbcjr.gitbooks.io/learning-ruby/content/estruturas_de_repeticao.html)

[Ruby – Passo 5: Estruturas de controle](https://elizbsi.wordpress.com/2012/12/02/ruby-passo-5-estruturas-de-controle/)

[Voltar ao Índice](#indice)

---

## <a name="parte10">Trabalhando com coleções</a>

```ruby
$arr = Array.[]
$option = 0

def add()
  puts 'What is your name ?'
  name = gets.chomp
  $arr.push(name)
end

def list
  puts 'Listing'
  $arr.each do |item|
    puts item
  end
end

def remove
  puts 'What is your name ?'
  name = gets.chomp.to_s
  index = $arr.index(name)
  $arr.delete_at(index)
end

begin
  puts ' 1 - Add '
  puts ' 2 - List '
  puts ' 3 - Delete '
  puts ' 4 - Exit '

  $option = gets.chomp.to_i

  case $option
    when 1
      add()
    when 2
      list()
    when 3
      remove()
    else
      puts 'Invalid options'
  end

end while $option != 4
```

[4.14 - Coleções](https://www.caelum.com.br/apostila-ruby-on-rails/mais-ruby-classes-objetos-e-metodos/#4-14-colecoes)

[Voltar ao Índice](#indice)

---

## <a name="parte11">Input e Output (IO)</a>

```ruby
# fname = 'test.txt'
# file = File.open(fname, 'w')
# file.puts 'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI'
# file.close
# #################
# file = File.open('test.txt', 'r')
# contents = file.read
# puts contents
# #################
# File.open('test.txt').readlines.each do |line|
#     puts line
# end

# #################
puts Dir.pwd

Dir.mkdir('files') unless File.exists? ('files')

files_dir = Dir.open Dir.pwd + '/files'

files_dir.each do |file|
  puts file
end
```

[4.25 - Para saber mais: um pouco de IO](https://www.caelum.com.br/apostila-ruby-on-rails/mais-ruby-classes-objetos-e-metodos/#4-25-para-saber-mais-um-pouco-de-io)

[Input & output in Ruby](http://zetcode.com/lang/rubytutorial/io/)

[Voltar ao Índice](#indice)

---

## <a name="parte12">Exceções</a>

```ruby
# def method_excep
#     raise TypeError, 'You must need anything'
# end

# method_excep()
#

# begin
#     puts 'This is my try'
#     raise TypeError, 'This is my exception'
#     puts 'Hello'
# rescue Exception => e
#     puts e.message
#     puts e.backtrace
# end
#

begin
  file = File.open('aaaa')
  if file.exists?
    puts 'Exists'
  else
    raise 'my exception'
  end
rescue Exception => e
  puts e.message
  # file = nil
  # puts file
  # retry
end
```

[4.22 - Manipulando erros e exceptions](https://www.caelum.com.br/apostila-ruby-on-rails/mais-ruby-classes-objetos-e-metodos/#4-22-manipulando-erros-e-exceptions)

[Ruby – Passo 7: Exception](https://elizbsi.wordpress.com/2012/12/03/ruby-passo-7-exception/)

[Voltar ao Índice](#indice)

---

## <a name="parte13">Classes</a>

```ruby
class Person
  def initialize(name, age)
    puts 'This is my constructor'
    @name = name
    @age = age
  end

  def say
    puts 'Hello from my first class in Ruby'
  end

  def sum(number1, number2)
    return number1 + number2
  end

  def age=(age)
    @age = age
  end

  def age
    @age
  end
end

leonan = Person.new("Leonan", 20)
leonan.say()

result = leonan.sum(5, 5)
puts result

puts leonan.age()

# puts Person.sum(5,5)
```

[4.6 - Classes](https://www.caelum.com.br/apostila-ruby-on-rails/mais-ruby-classes-objetos-e-metodos/#4-6-classes)

[Ruby – Passo 8: Classes e Objetos](https://elizbsi.wordpress.com/2012/12/08/ruby-passo-8-classes-e-objetos/)

[Classe](https://unbcjr.gitbooks.io/learning-ruby/content/classe.html)

[Voltar ao Índice](#indice)

---

## <a name="parte14">Finalizando</a>

[Introdução ao Ruby](https://unbcjr.gitbooks.io/learning-ruby/content/)

[Desenv. Ágil para Web com Ruby on Rails](https://www.caelum.com.br/apostila-ruby-on-rails/)

[Ruby](https://brizeno.wordpress.com/category/ruby/)

[Voltar ao Índice](#indice)

---

# Ruby Orientado a Objetos

## <a name="parte15">Introduçao</a>

Referências:  

[Desenv. Ágil para Web com Ruby on Rails](https://www.caelum.com.br/apostila-ruby-on-rails/)

[Orientação a objetos](https://unbcjr.gitbooks.io/learning-ruby/content/orientacao_a_objetos_md.html)

[Ruby – Passo 8: Classes e Objetos](https://elizbsi.wordpress.com/)


[Voltar ao Índice](#indice)

---

## <a name="parte16">Orientanção a objetos</a>

A programação orientada a objetos refere-se ao paradigma de programação onde o desenvolvimento do software é regido pelas definições e relacionamentos entre os objetos que compõem o mesmo.

Ruby é uma linguagem puramente orientada a objetos, bastante influenciada pelo Smalltalk. Desta forma, tudo em Ruby é um objeto, até mesmo os tipos básicos que vimos até agora.

Uma maneira simples de visualizar isso é através da chamada de um método em qualquer um dos objetos:
```ruby
"strings são objetos".upcase()
:um_simbolo.object_id()
```

Até os números inteiros são objetos, da classe Fixnum:

```ruby
10.class()
```

[Mais Ruby: classes, objetos e métodos](https://www.caelum.com.br/apostila-ruby-on-rails/mais-ruby-classes-objetos-e-metodos/)




[Voltar ao Índice](#indice)

---

## <a name="parte17">Iniciando o projeto e curiosidade</a>

```ruby
class Hello
  def say
    puts 'Hello word'
  end
end

hello = Hello.new
hello.say
```



[Voltar ao Índice](#indice)

---

## <a name="parte18">Revisão sobre classes</a>

A classe representa um conjunto de objetos (um modelo), apesar deles possuirem atributos iguais, eles têm valores diferentes em seus atributos.
Em Ruby, temos um exemplo de uma classe:

```ruby
# classe.rb
class Pessoa

  @@quantidade_de_pessoas = 0

  def initialize(nome, endereco, data_de_nascimento)
    @nome = nome
    @endereco = endereco
    @data_de_nascimento = data_de_nascimento

    @@quantidade_de_pessoas += 1
  end

end
# https://unbcjr.gitbooks.io/learning-ruby/content/classe.html
```

Exemplos

```ruby
class Pessoa
  def fala
    puts "Sei Falar"
  end

  def troca(roupa, lugar="banheiro")
    "trocando de #{roupa} no #{lugar}"
  end
end

p = Pessoa.new
# o objeto apontado por p já nasce com os métodos fala e troca.
```

[Voltar ao Índice](#indice)

---

## <a name="parte19">Instance variable e class variable</a>

```ruby
class Person
  @name = 'Leonan'
  @@age = 20
end

puts Person.instance_variables
puts Person.class_variables

# puts Person.new.name = 'LEONAN'

```

As variáveis que começam com @ são atributos de instância, ou seja, é diferente para cada novo objeto. Já as que começam com @@ são atributos de classe, e é igual para todos objetos de uma classe.

O método initialize é um método construtor da classe. Ele cria uma instância com os argumentos que são passados a ele.

```ruby
# classe.rb

def initialize(nome, endereco)
  @nome = nome
  @endereco = endereco

  @@quantidade_de_pessoas += 1
end

```

Ao fazermos @nome = nome, estamos atribuindo à variável de instância @nome o conteúdo da variável nome passada como argumento do método initialize. Assim como todos os outros atributos.

Na última linha, o código @@quantidade_de_pessoas += 1 incrementa em um a variável de classe que representa a quantidade total de pessoas criadas.

[4.11 - Atributos e propriedades: acessores e modificadores](https://www.caelum.com.br/apostila-ruby-on-rails/mais-ruby-classes-objetos-e-metodos/#4-11-atributos-e-propriedades-acessores-e-modificadores)

Atributos, também conhecidos como variáveis de instância, em Ruby são sempre privados e começam com @. Não há como alterá-los de fora da classe; apenas os métodos de um objeto podem alterar os seus atributos (encapsulamento!).

```ruby
class Pessoa
  def muda_nome(novo_nome)
    @nome = novo_nome
  end

  def diz_nome
    "meu nome é #{@nome}"
  end
end

p = Pessoa.new
p.muda_nome "João"
p.diz_nome

# => "João"
```



[Voltar ao Índice](#indice)

---

## <a name="parte20">Métodos e Atributos</a>

```ruby
class Person

  attr_reader :name, :age, :height
  attr_writer :name

  def say(name)
    puts 'I\'m talking with ' + name
  end

  def walk
    puts 'I\'m Walking'
  end
end

jose = Person.new
jose.say('José Malcher Jr.')
jose.walk
jose.name = 'JOSÉ STÉLIO MALCHER JR.'
puts jose.name
```

há métodos que auxiliam o acesso a atributos:

```
attr_reader :atributo
# permite que o atributo seja lido

attr_writer :atributo
# permite que o atributo seja alterado

attr_accessor :atributo
# permite que o atributo seja lido e alterado
```

Lembre-se:
Para reutilizar uma classe: load
Criar o Construtor:     initialize
Criar Variável de instância: @var
Criar Variável de classe: @@var

Métodos de acesso:
Atributo de leitura:    attr_reader
Atributo de escrita:    attr_writer
Atributo de leitura e escrita:  attr_accessor

Modificadores de controle de acesso:
Public – Podem ser acessados por qualquer método em qualquer objeto.
Private – Só podem ser chamados dentro de seu próprio objeto.
Protected – Podem ser acessados em seus descendentes.

Imagine uma classe chamada Carro que tenha os atributos: marca, modelo, cor e tanque.
Usando as seguintes definições de leitura e escrita:
Marca – leitura
Modelo – escrita
Cor – leitura e escritaTanque – escrita protegida e leitura pública

```ruby
class Carro
 
  attr_reader :marca     #atributo de leitura
  attr_writer :modelo      #atributo de escrita
  attr_accessor :cor     # atributo de leitura e escrita
  protected    #necessário um método de acesso (set)
  attr_writer :tanque
  public
  attr_reader :tanque
 
  #construtor
  def initialize(marca,modelo,cor,tanque)
    @marca = marca
    @modelo = modelo
    @cor = cor
    @tanque = tanque
  end
 
  #toString
  def to_s
    "Marca:#{@marca} Modelo:#{@modelo} Cor:#{@cor} Tanque:#{@tanque}"
  end
 
  def setTanque(valor)
    @tanque=valor
  end
 
end

# https://elizbsi.wordpress.com/2012/12/08/ruby-passo-8-classes-e-objetos/
```

[Voltar ao Índice](#indice)

---

## <a name="parte21">Controle de acesso e construtores</a>

```ruby
class Person

  attr_reader :name, :age, :height
  attr_writer :name

  def initialize(color, width)
    puts 'My CONTRUCTOR ' + color
  end

  def say(name)
    puts 'I\'m talking with ' + name
  end

  def walk
    puts 'I\'m Walking'
    my_private_method
  end

  private
    def my_private_method
      puts 'this is private'
    end
  protected
    def my_protected_method
      puts 'this is my protectec'
    end

end

# jose = Person.new
# jose.say('José Malcher Jr.')
# jose.walk
# jose.name = 'JOSÉ STÉLIO MALCHER JR.'

jose = Person.new('blue', 0.90)
jose.walk
maria = Person.new('red', 0.40)
erik = Person.new('yello', 0.70)

puts jose.name
```




[Voltar ao Índice](#indice)

---

## <a name="parte22">Encapsulamento</a>

```ruby
class Bank
  attr_accessor :number, :total

  def deposit(amount)
    @total = @total + amount
  end

  def withdraw(amount)
    @total = @total - amount
  end

  # attr_reader :number, :total
  # attr_writer :number, :total


  # def number
  #     @number
  # end

  # def number=(value)
  #     @number = value
  # end

  # def total
  #     @total
  # end

  # def total=(value)
  #     @total = value
  # end
end

bank = Bank.new
bank.number = '123456789'
bank.total  = 1000.00

bank.deposit(200)

puts bank.number
puts bank.total

bank.withdraw(500)
puts bank.total
```

[4.11 - Atributos e propriedades: acessores e modificadores](https://www.caelum.com.br/apostila-ruby-on-rails/mais-ruby-classes-objetos-e-metodos/#4-11-atributos-e-propriedades-acessores-e-modificadores)

[Voltar ao Índice](#indice)

---

## <a name="parte23">Heranças</a>

```ruby
class Animal
  attr_accessor :name, :weight, :paws

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def walk
    puts 'Im walking with ' + @paws.to_s + ' paws'
  end
end

class Dog < Animal
  def initialize(name, weight, paws)
    @name, @weight, @paws = name, weight, paws
  end
end

class Kangaroo < Animal
  def initialize(name, weight, paws)
    @name, @weight, @paws = name, weight, paws
  end
end


dog = Dog.new('Liza', 2.0, 4)
kangaroo = Dog.new('Ted', 2.0, 2)

puts dog.name
puts dog.paws
puts dog.walk

puts kangaroo.name
puts kangaroo.paws
puts kangaroo.walk


# dog = Animal.new('Dog', 2.0)

# puts dog.name
```

[Ruby – Passo 9: Herança](https://elizbsi.wordpress.com/2012/12/08/ruby-passo-9-heranca-2/)

[Voltar ao Índice](#indice)

---

## <a name="parte24">Overides</a>

```ruby
class Animal
  attr_accessor :name, :weight, :paws

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def walk
    puts 'Im walking with ' + @paws.to_s + ' paws'
  end
end

class Dog < Animal
  def initialize(name, weight, paws)
    @name, @weight, @paws = name, weight, paws
  end
end

class Kangaroo < Animal
  def initialize(name, weight, paws)
    @name, @weight, @paws = name, weight, paws
  end
end

class Dolphin < Animal
  def initialize(name, weight, fins)
    @name, @weight, @paws = name, weight, fins
  end

  def paws #sobreescrito <<------------------------------
    @paws = 20
  end
  #sobreescrito <<------------------------------
  def walk
    puts 'Im swimming with ' + @paws.to_s + ' fins'
  end
end

dog = Dog.new('Liza', 2.0, 4)
kangaroo = Dog.new('Ted', 2.0, 2)
dolphin = Dolphin.new('Zed', 40.0, 2)

puts dog.name
puts dog.paws
puts dog.walk

puts kangaroo.name
puts kangaroo.paws
puts kangaroo.walk


puts dolphin.name
puts dolphin.paws
puts dolphin.walk

# dog = Animal.new('Dog', 2.0)

# puts dog.name
```

[Voltar ao Índice](#indice)

---

## <a name="parte25"> </a>

[Voltar ao Índice](#indice)

---

## <a name="parte26"> </a>

[Voltar ao Índice](#indice)

---