-- Exclui dados.
DELETE FROM cliente
DELETE FROM financiamento
DELETE FROM parcela

-- Informações Cliente
INSERT INTO cliente (CPF, Nome, UF, Celular)
     VALUES (56568953008, 'João da Silva', 'SP', 11985235678)
     
INSERT INTO cliente (CPF, Nome, UF, Celular)
     VALUES (31921688033, 'Manuel de Souza', 'SP', 11954328945)
          
INSERT INTO cliente (CPF, Nome, UF, Celular)
     VALUES (09314200086, 'Célia Domingos', 'RJ', 21923785612)     

INSERT INTO cliente (CPF, Nome, UF, Celular)
     VALUES (54848543002, 'Amanda Nunes', 'SP', 11958419625)  


-- Informações Financiamentos
INSERT INTO financiamento (IdFinanciamento, CPF, TipoFinanciamento, ValorTotal, DataUltimoVencimento)
     VALUES (1, 56568953008, 'PF', 15000.00, CONVERT(DATETIME, '2023-09-05', 102))

INSERT INTO financiamento (IdFinanciamento, CPF, TipoFinanciamento, ValorTotal, DataUltimoVencimento)
     VALUES (2, 31921688033, 'PF', 35000.00, CONVERT(DATETIME, '2027-02-26', 102))

INSERT INTO financiamento (IdFinanciamento, CPF, TipoFinanciamento, ValorTotal, DataUltimoVencimento)
     VALUES (3, 09314200086, 'PJ', 50000.00, CONVERT(DATETIME, '2029-04-10', 102))

INSERT INTO financiamento (IdFinanciamento, CPF, TipoFinanciamento, ValorTotal, DataUltimoVencimento)
     VALUES (4, 54848543002, 'PJ', 28000.00, CONVERT(DATETIME, '2029-04-10', 102))


-- Informações de parcelas
INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (1, 56568953008, 1, 2500.00, CONVERT(DATETIME, '2023-03-05', 102), CONVERT(DATETIME, '2023-03-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (1, 56568953008, 2, 2500.00, CONVERT(DATETIME, '2023-04-05', 102), CONVERT(DATETIME, '2023-04-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (1, 56568953008, 3, 2500.00, CONVERT(DATETIME, '2023-05-05', 102), CONVERT(DATETIME, '2023-05-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (1, 56568953008, 4, 2500.00, CONVERT(DATETIME, '2023-06-05', 102), CONVERT(DATETIME, '2023-06-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (1, 56568953008, 5, 2500.00, CONVERT(DATETIME, '2023-07-05', 102), NULL)

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (1, 56568953008, 6, 2500.00, CONVERT(DATETIME, '2023-03-08', 102), NULL)

--**--**--**

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (2, 31921688033, 1, 4375.00, CONVERT(DATETIME, '2023-03-05', 102), CONVERT(DATETIME, '2023-03-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (2, 31921688033, 2, 4375.00, CONVERT(DATETIME, '2023-04-05', 102), CONVERT(DATETIME, '2023-04-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (2, 31921688033, 3, 4375.00, CONVERT(DATETIME, '2023-05-05', 102), CONVERT(DATETIME, '2023-05-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (2, 31921688033, 4, 4375.00, CONVERT(DATETIME, '2023-06-05', 102), CONVERT(DATETIME, '2023-06-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (2, 31921688033, 5, 4375.00, CONVERT(DATETIME, '2023-07-05', 102), NULL)

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (2, 31921688033, 6, 4375.00, CONVERT(DATETIME, '2023-08-05', 102), NULL)

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (2, 31921688033, 7, 4375.00, CONVERT(DATETIME, '2023-09-05', 102), NULL)

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (2, 31921688033, 8, 4375.00, CONVERT(DATETIME, '2023-10-05', 102), NULL)

--**--**--**

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (3, 09314200086, 1, 6250.00, CONVERT(DATETIME, '2023-01-05', 102), CONVERT(DATETIME, '2023-01-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (3, 09314200086, 2, 6250.00, CONVERT(DATETIME, '2023-02-05', 102), CONVERT(DATETIME, '2023-02-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (3, 09314200086, 3, 6250.00, CONVERT(DATETIME, '2023-03-05', 102), CONVERT(DATETIME, '2023-03-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (3, 09314200086, 4, 6250.00, CONVERT(DATETIME, '2023-04-05', 102), CONVERT(DATETIME, '2023-04-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (3, 09314200086, 5, 6250.00, CONVERT(DATETIME, '2023-05-05', 102), CONVERT(DATETIME, '2023-05-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (3, 09314200086, 6, 6250.00, CONVERT(DATETIME, '2023-06-05', 102), CONVERT(DATETIME, '2023-06-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (3, 09314200086, 7, 6250.00, CONVERT(DATETIME, '2023-07-05', 102), NULL)

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (3, 09314200086, 8, 6250.00, CONVERT(DATETIME, '2023-08-05', 102), NULL)

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (3, 09314200086, 9, 6250.00, CONVERT(DATETIME, '2023-09-05', 102), NULL)

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (3, 09314200086, 10, 6250.00, CONVERT(DATETIME, '2023-10-05', 102), NULL)

--**--**--**

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (4, 54848543002, 1, 4666.67, CONVERT(DATETIME, '2023-02-05', 102), CONVERT(DATETIME, '2023-02-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (4, 54848543002, 2, 4666.67, CONVERT(DATETIME, '2023-03-05', 102), CONVERT(DATETIME, '2023-03-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (4, 54848543002, 3, 4666.67, CONVERT(DATETIME, '2023-04-05', 102), CONVERT(DATETIME, '2023-04-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (4, 54848543002, 4, 4666.67, CONVERT(DATETIME, '2023-05-05', 102), CONVERT(DATETIME, '2023-05-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (4, 54848543002, 5, 4666.67, CONVERT(DATETIME, '2023-06-05', 102), CONVERT(DATETIME, '2023-06-05', 102))

INSERT INTO parcela (IdFinanciamento, CPF, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
     VALUES (4, 54848543002, 6, 4666.67, CONVERT(DATETIME, '2023-07-05', 102), NULL)





