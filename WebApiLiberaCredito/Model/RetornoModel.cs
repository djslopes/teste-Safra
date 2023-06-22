namespace WebApiLiberaCredito.Model
{
    public class RetornoModel
    {
        public string StatusCredito { get; set; }
        public double ValorTotal { get; set; }
        public double ValorJuros { get; set; }
        public List<string> Mensagens { get; set; }
    }
}
