use empresa_xpto;
set sql_safe_updates = 0;

-- 1) Consulte todos os funcionários
select * from funcionarios;

-- 2) Consulte somente o nome e sobrenome de todos os funcionários
select nome,sobrenome from funcionarios;

select * from departamentos;
-- 3) Consulte somente o nome e sobrenome dos funcionários ordenado pelo nome
select nome,sobrenome from funcionarios order by nome;

-- 4) Consulte todos as colunas dos funcionários ordenado pelo salário do menor para maior

select * from funcionarios where salario order by salario;
-- 5) Retorne somente os 5 funcionários
select * from funcionarios limit 5;

-- 6) Retorne somente os 5 funcionários com maior salário
select*from funcionarios order by salario desc limit 5;

-- 7) Consulte funcionários que recebem acima ou igual a 15 mil reais
select*from funcionarios where salario >= 15000;

-- 8) Consulte somente o nome, sobrenome e salario do funcionário que possui id 177
select nome, sobrenome, salario from funcionarios where id=177;

-- 9) Consulte os funcionários que são do departamento de "Vendas" e possuem salário acima de 10 mil
select * from funcionarios 
where id_departamento = 2 and salario <10000;
-- 10) Consulte os funcionários que são do departamento "Financeiro" ordenado pelo nome
select * from funcionarios where id_departamento = 1 order by nome;

-- 11) Consulte os funcionários que recebem entre 5 mil e 10 mil
select*from funcionarios where salario between 5000 and 10000;

-- 12) Consulte os funcionários do departamento "TI" que recebem entre 8 mil e 10 mil

select * from funcionarios where id_departamento = 4 and salario between 8000 and 10000;

-- 13) Consulte quantos funcionários existem na empresa
select count(*)as total_funcionarios from funcionarios;

-- 14) Consulte a média salárial da empresa
select avg(salario) as media_salario from funcionarios;

-- 15) Consulte a média salarial agrupada por departamentos
select avg(salario) as media_salario from funcionarios group by id_departamento;


-- 16) Consulte a quantidade de funcionários por departamentos
select count(*) as total_funcionario from funcionarios group by id_departamento;

-- 17) Atualize o salário do funcionário com id 25 para 3 mil
UPDATE funcionarios
SET salario = 3000
WHERE id =25;
select * from funcionarios where id = 25;

-- 18) Atualize o salário do funcionário chamado Antonio para 2 mil
update funcionarios set salario = 2000 where nome = 'Antonio';
select * from funcionarios where nome = "Antonio";

-- 19) Atualize em 10% o salário dos funcionários que recebem entre 5000 e 10000 e são do departamento "Marketing"
update funcionarios
set salario = salario * 1.1
where salario between 5000 and 10000 and id_departamento = 10;

-- 20) Atualize em 5% o salário dos funcionários que recebem acima de 15000 e NÃO são do departamento "TI"
update funcionarios
set salario = salario * 1.05
where salario > 15000 and not id_departamento=4;
