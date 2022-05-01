create schema `navios_schemac02`;
CREATE TABLE `navios_schemac02`.`tb_navios` (
    `nome_navio` VARCHAR(50) NULL,
    `mes_ano` VARCHAR(10) NULL,
    `classificacao_risco` VARCHAR(15) NULL,
    `indice_conformidade` VARCHAR(15) NULL,
    `pontuacao_risco` INT NULL,
    `temporada` VARCHAR(250) NULL
);
SELECT *
FROM navios_schemac02.TB_NAVIOS;
-- Filtrando Consultas
SELECT nome_navio,
    mes_ano,
    classificacao_risco
FROM navios_schemac02.TB_NAVIOS;
-- Quais as classificacoes existentes
SELECT DISTINCT classificacao_risco
FROM navios_schemac02.TB_NAVIOS;
-- Navios que caíram na classificação de risco D de forma ordenada e com ponuação de risco maior ou igual a 1000
SELECT nome_navio,
    temporada,
    pontuacao_risco
FROM navios_schemac02.tb_navios
WHERE classificacao_risco = 'D'
    AND pontuacao_risco >= 1000
ORDER BY nome_navio;
-- Embarcacoes com maior indice conformidade
SELECT nome_navio,
    pontuacao_risco,
    indice_conformidade,
    temporada
FROM navios_schemac02.tb_navios
WHERE classificacao_risco in ('A', 'B')
    AND indice_conformidade > 90
ORDER BY nome_navio;
-- limitando numero de linhas
SELECT nome_navio,
    pontuacao_risco,
    indice_conformidade,
    temporada
FROM navios_schemac02.tb_navios
WHERE classificacao_risco in ('A', 'B')
    AND indice_conformidade > 90
ORDER BY nome_navio
LIMIT 10;
-- em abril de 2018 alguma embarcação teve indice de conformidade de 100% e pontuacação de risco = 0?
SELECT nome_navio,
    pontuacao_risco,
    indice_conformidade,
    mes_ano
FROM navios_schemac02.tb_navios
WHERE indice_conformidade = 100
    AND mes_ano = '04/2018'
    AND pontuacao_risco = 0;