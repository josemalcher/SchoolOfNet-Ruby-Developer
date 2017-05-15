# Iniciando com Ruby

Resumo do curso:

https://www.schoolofnet.com/curso-iniciando-com-ruby/

---

Índice

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

[Voltar ao Índice](#indice)

---

## <a name="parte14">Finalizando</a>

[Voltar ao Índice](#indice)

---
