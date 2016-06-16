class Livro
	attr_reader :titulo, :ano_lancamento, :preco, :possui_reimpressao
	def initialize(titulo,preco,ano_lancamento, possui_reimpressao)
		@titulo = titulo
		@ano_lancamento = ano_lancamento
		@preco = calcula_preco(preco)
		@possui_reimpressao = possui_reimpressao
	end

	private def calcula_preco(base)		
		if(@ano_lancamento < 2000)
			base *= 0.7
		else
			base
		end
	end

	def possui_reimpressao?
		return @possui_reimpressao
	end
end

livro_rails = Livro.new("Agile Web Development with Rails",70.00,2011, true)


livro_ruby = Livro.new("Programming Ruby 1.9",60.00,2010, true)

livros = [livro_rails, livro_ruby]

def imprime_nota_fiscal(livros)
	livros.each do |livro|
		puts "Titulo: #{livro.titulo} - #{livro.preco}"
	end
end

def livro_para_newsletter(livro)
	if livro.ano_lancamento < 1999
		puts "Newsletter/liquidacao"
		puts livro.titulo 
		puts livro.preco
		puts livro.possui_reimpressao?
	end
end

algoritmos = Livro.new("Algoritmos",100,1998,true)
livro_para_newsletter(algoritmos)