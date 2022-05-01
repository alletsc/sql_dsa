SELECT *
FROM cancer_schema03.TB_DADOS;
-- TOTAL DE REGISTROS = 236
SELECT COUNT(*)
FROM cancer_schema03.TB_DADOS;
-- Binarização da variavel classe
SELECT DISTINCT classe
FROM cancer_schema03.TB_DADOS;
-- no-recurrence-events = 0 / recurrence-events = 1
SELECT CASE
        WHEN classe = 'no-recurrence-events' THEN 0
        WHEN classe = 'recurrence-events' THEN 1
    END AS classe
FROM cancer_schema03.TB_DADOS;
--  Binarização variavel irradiando
SELECT DISTINCT irradiando
FROM cancer_schema03.TB_DADOS;
-- yes = 1 / no = 0
SELECT CASE
        WHEN irradiando = 'yes' THEN 1
        WHEN irradiando = 'no' THEN 0
    END AS irradiando
FROM cancer_schema03.TB_DADOS;
-- Binarização variavel node_caps
SELECT DISTINCT node_caps
FROM cancer_schema03.TB_DADOS;
--  yes = 1 / no = 0 / ? = 2 (null)
SELECT CASE
        WHEN node_caps = 'yes' THEN 1
        WHEN node_caps = 'no' THEN 0
        ELSE 2
    END AS node_caps
FROM cancer_schema03.TB_DADOS;
-- Categorização da variavel seio (e/d)
SELECT DISTINCT seio
FROM cancer_schema03.TB_DADOS;
SELECT CASE
        WHEN seio = 'left' THEN 'e'
        WHEN seio = 'right' THEN 'd'
    END AS seio
FROM cancer_schema03.TB_DADOS;
--  categorização tamanho tumor
SELECT DISTINCT tamanho_tumor
FROM cancer_schema03.TB_DADOS
ORDER BY tamanho_tumor ASC;
SELECT CASE
        WHEN tamanho_tumor = '0-4'
        OR tamanho_tumor = '5-9' THEN 'Muito Pequeno'
        WHEN tamanho_tumor = '10-14'
        OR tamanho_tumor = '15-19' THEN 'Pequeno'
        WHEN tamanho_tumor = '20-24'
        OR tamanho_tumor = '25-29' THEN 'Medio'
        WHEN tamanho_tumor = '30-34'
        OR tamanho_tumor = '35-39' THEN 'Grande'
        WHEN tamanho_tumor = '40-44'
        OR tamanho_tumor = '45-49' THEN 'Muito Grande'
        WHEN tamanho_tumor = '50-54'
        OR tamanho_tumor = '55-59' THEN 'Tratamento Urgente'
    END as tamanho_tumor
FROM cap03.TB_DADOS;
-- label encoding variante quadrante
SELECT DISTINCT quadrante
FROM cancer_schema03.TB_DADOS;
SELECT CASE
        WHEN quadrante = 'left_low' THEN 1
        WHEN quadrante = 'right_up' THEN 2
        WHEN quadrante = 'left_up' THEN 3
        WHEN quadrante = 'right_low' THEN 4
        WHEN quadrante = 'central' THEN 5
        ELSE 0
    END as quadrante
FROM cap03.TB_DADOS;