--  Quais embarcações possuem pontuação de risco igual a 310?
SELECT nome_navio,
    pontuacao_risco
FROM navios_schemac02.tb_navios
WHERE pontuacao_risco = 310;
--  Quais embarcações têm classificação de risco A e índice de conformidade maior ouigual a 95%?
SELECT nome_navio,
    classificacao_risco,
    indice_conformidade
FROM navios_schemac02.tb_navios
WHERE indice_conformidade >= 95
    AND classificacao_risco = 'A';
-- Quais embarcações têm classificação de risco C ou D e índice de conformidade menor ou igual a 95%
SELECT nome_navio,
    classificacao_risco,
    indice_conformidade
FROM navios_schemac02.tb_navios
WHERE indice_conformidade <= 95
    AND classificacao_risco = 'C'
    OR classificacao_risco = 'D';
-- Quais embarcações têm classificação de risco A oupontuação de risco igual a 0?
SELECT nome_navio,
    pontuacao_risco,
    classificacao_risco
FROM navios_schemac02.tb_navios
WHERE pontuacao_risco = 0
    OR classificacao_risco = 'A';
-- Quais embarcações foram inspecionadas em Dezembro de 2016
SELECT nome_navio,
    mes_ano,
    temporada
FROM navios_schemac02.tb_navios
WHERE temporada LIKE '%Dezembro 2016';