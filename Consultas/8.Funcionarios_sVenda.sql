/*Quais funcionários nunca aparecem em pedidos?*/
/*A lista parece grande, mas é o esperado: só atendentes e caixas registram pedidos, e todos eles aparecem nas vendas. Quem ficou de fora é gerência, cozinha, entrega e estoque. A leitura útil é essa, e não “10 funcionários improdutivos”*/

select opfun.nome, cargo.nome cargo
from 
	lanchonete_operacao.funcionarios OpFun
left join lanchonete_vendas.pedidos venda
	on opfun.id_funcionario = venda.id_funcionario
join lanchonete_operacao.cargos cargo
	on OpFun.id_cargo = cargo.id_cargo
where venda.id_pedido is null
Order by cargo.id_cargo
;
