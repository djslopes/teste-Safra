-- Primeira query
WITH Percentual (IdFinanciamento, pct_pagamento)
AS
(
	SELECT IdFinanciamento,
		   (count(DataPagamento) * 100) / count(NumeroParcela) as pct_pagamento
	  FROM parcela 
	 WHERE IdFinanciamento in
			  ( SELECT DISTINCT IdFinanciamento 
			      FROM parcela 
				 WHERE DataPagamento IS NOT NULL)
	 GROUP BY IdFinanciamento
	 HAVING (count(DataPagamento) * 100) / count(NumeroParcela) >= 60
)
SELECT cliente.CPF, cliente.Nome, Percentual.IdFinanciamento, Percentual.pct_pagamento 
  FROM financiamento INNER JOIN Percentual ON financiamento.IdFinanciamento = Percentual.IdFinanciamento
                     INNER JOIN cliente    ON cliente.CPF = financiamento.CPF
 WHERE cliente.UF = 'SP'   
 ORDER BY cliente.Nome
        

-- Segunda query
SELECT DISTINCT TOP 4 CPF
  FROM parcela
 WHERE DataVencimento >= GETDATE()
   AND DataPagamento IS NULL
   AND DATEDIFF(day, GETDATE(), DataVencimento) >= 5




