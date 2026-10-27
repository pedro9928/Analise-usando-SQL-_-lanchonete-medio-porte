/*Liste cada funcionário com o nome e o cargo do seu gerente. O gerente geral não pode sumir do resultado.*/

Select 
	func.nome nomeFuncionario,
    coalesce(gen.nome, "s/gerente") nomeGerente,
    coalesce(car.nome, "-") nomeCargoGerente
from lanchonete_operacao.funcionarios func
left join lanchonete_operacao.funcionarios gen
	on func.id_gerente = gen.id_funcionario
left join lanchonete_operacao.cargos car
	on gen.id_cargo = car.id_cargo
ORDER BY func.id_funcionario
;