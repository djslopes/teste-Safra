using WebApiLiberaCredito.Model;
using WebApiLiberaCredito.Util;

namespace WebApiLiberaCredito.Services
{
    public class LiberaCreditoService
    {
        public RetornoModel CalcularCredito(DadosEntradaModel dados)
        {
            // Variaveis locais.
            RetornoModel retorno = new RetornoModel();  

            // Efetua verificação dos dados informados.
            var verifDados = ValidacaoDados(dados);

            // Se não retornou erros, efetua processo.
            if (verifDados.Count() == 0) 
            {
                // Busca valor do percentual conforme tipo de crédito.
                int taxa = (int)EnumHelper.GetEnumValue<TipoCreditoEnum>(dados.TipoCredito);

                // Calcula juros.
                double percentual = taxa / 100.00;
                double juros = dados.ValorCredito * percentual;
                double valorTotal = dados.ValorCredito + juros;

                // Monta saída.
                retorno.StatusCredito = "Aprovado";
                retorno.ValorJuros = juros;
                retorno.ValorTotal = valorTotal;
                retorno.Mensagens = new List<string>();
            }
            else
            {
                retorno.StatusCredito = "Reprovado";
                retorno.ValorJuros = 0;
                retorno.ValorTotal = 0;
                retorno.Mensagens = verifDados;
            }

            // Retorna dados.
            return retorno;
        }


        #region Rotinas

        private List<string> ValidacaoDados(DadosEntradaModel dados)
        {
            // Variaveis locais.
            List<string> mensagens = new List<string>();

            string dataVctoMin = DateTime.Now.AddDays(dados.Validacao.MinimoDiasVencimento).ToString("yyyyMMdd");
            string dataVctoMax = DateTime.Now.AddDays(dados.Validacao.MaximoDiasVencimento).ToString("yyyyMMdd");

            // Verifica se valor extrapolou o limite.
            if (dados.ValorCredito > dados.Validacao.ValorMaximoLiberado)
            {
                mensagens.Add($"Valor do crédito é superior ao limite de R$ {dados.Validacao.ValorMaximoLiberado.ToString("N2")}");
            }

            // Verifica quantidade de parcelas minima e máxima.
            if (dados.QtdeParcelas < dados.Validacao.QtdeMinimaParcelas || dados.QtdeParcelas > dados.Validacao.QtdeMaximaParcelas)
            {
                mensagens.Add($"Quantidade de parcelas deve ficar entre {dados.Validacao.QtdeMinimaParcelas}x e {dados.Validacao.QtdeMaximaParcelas}x");
            }

            // Se for pessoal juridica verifica se o valor minimo está em 15.000,00.
            if (dados.TipoCredito == "PJ" && dados.ValorCredito < dados.Validacao.ValorMinimoLiberadoPJ)
            {
                mensagens.Add($"Para pessoa jurídica o valor deve ser no mínimo de R$ {dados.Validacao.ValorMinimoLiberadoPJ.ToString("N2")}");
            }

            // Verifica as datas de vencimentos.
            if (int.Parse(dados.DataPrimeiroVcto) < int.Parse(dataVctoMin))
            {
                mensagens.Add($"A data do primeiro vencimento não pode ser menor que {dados.Validacao.MinimoDiasVencimento} dias.");
            }

            if (int.Parse(dados.DataPrimeiroVcto) > int.Parse(dataVctoMax))
            {
                mensagens.Add($"A data do primeiro vencimento não pode ser maior que {dados.Validacao.MaximoDiasVencimento} dias.");
            }

            return mensagens;
        }

        #endregion
    }
}
