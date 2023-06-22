namespace WebApiLiberaCredito.Model
{
    public class DadosEntradaModel
    {
        public double ValorCredito { get; set; }
        public string TipoCredito { get; set; }
        public int QtdeParcelas { get; set; }
        public string DataPrimeiroVcto { get; set; }
        public ValidacaoEntradaModel Validacao { get; set; }

    }

    public class ValidacaoEntradaModel
    {
        public double ValorMaximoLiberado { get; set; }
        public int QtdeMinimaParcelas { get; set; }
        public int QtdeMaximaParcelas { get; set; }
        public double ValorMinimoLiberadoPJ { get; set; }
        public int MinimoDiasVencimento { get; set; }
        public int MaximoDiasVencimento { get; set; }
    }

}
