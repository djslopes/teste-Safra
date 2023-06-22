ALTER TABLE "financiamento"
	DROP CONSTRAINT "REL_CLI_FIN"
GO

ALTER TABLE "parcela"
	DROP CONSTRAINT "REL_FIN_PARC"
GO

IF OBJECT_ID('.cliente') IS NOT NULL
DROP TABLE "cliente"
GO

IF OBJECT_ID('.financiamento') IS NOT NULL
DROP TABLE "financiamento"
GO

IF OBJECT_ID('.parcela') IS NOT NULL
DROP TABLE "parcela"
GO

CREATE TABLE "cliente"  ( 
	"CPF"    	numeric(11,0) NOT NULL,
	"Nome"   	varchar(60) NOT NULL,
	"UF"     	char(2) NOT NULL,
	"Celular"	numeric(11,0) NOT NULL,
	CONSTRAINT "PK_cliente_1" PRIMARY KEY CLUSTERED("CPF")
)
GO

CREATE TABLE "financiamento"  ( 
	"IdFinanciamento"      	bigint NOT NULL,
	"CPF"                 	numeric(11,0) NOT NULL,
	"TipoFinanciamento"   	char(2) NOT NULL,
	"ValorTotal"          	numeric(11,2) NOT NULL,
	"DataUltimoVencimento"	datetime NOT NULL,
	CONSTRAINT "PK_financiamento_1" PRIMARY KEY CLUSTERED("IdFinanciamento","CPF")
)
GO

CREATE TABLE "parcela"  ( 
	"IdFinanciamento"	bigint NOT NULL,
	"CPF"            	numeric(11,0) NOT NULL,
	"NumeroParcela"  	int NOT NULL,
	"ValorParcela"   	numeric(11,2) NOT NULL,
	"DataVencimento" 	datetime NOT NULL,
	"DataPagamento"  	datetime NULL,
	CONSTRAINT "PK_parcela_1" PRIMARY KEY CLUSTERED("IdFinanciamento","CPF","NumeroParcela")
)
GO

ALTER TABLE "financiamento"
	ADD CONSTRAINT "REL_CLI_FIN"
	FOREIGN KEY("CPF")
	REFERENCES "cliente"("CPF")
GO

ALTER TABLE "parcela"
	ADD CONSTRAINT "REL_FIN_PARC"
	FOREIGN KEY("IdFinanciamento", "CPF")
	REFERENCES "financiamento"("IdFinanciamento", "CPF")
GO

