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