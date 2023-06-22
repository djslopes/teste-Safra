using Microsoft.AspNetCore.Mvc;
using System.ComponentModel.DataAnnotations;
using System.Net;
using WebApiLiberaCredito.Model;
using WebApiLiberaCredito.Services;

namespace WebApiLiberaCredito.Controllers
{
    [ApiController]
    [ApiVersion("1.0")]
    public class LiberaCreditoController : Controller
    {
        [MapToApiVersion("1.0")]
        [HttpPost("calculocredito")]
        public ActionResult<RetornoModel> Calcular([FromBody, Required] DadosEntradaModel dados)
        {
            try
            {
                LiberaCreditoService liberaCredito = new LiberaCreditoService();
                var retorno = liberaCredito.CalcularCredito(dados);

                return new ObjectResult(retorno) { StatusCode = 200 };
            }
            catch (Exception ex)
            {
                return StatusCode((int)HttpStatusCode.InternalServerError, new { Mensagem = $"Ocorreu erro ao tentar efetuar o cálculo do crédito. Mensagem : {ex.Message}" });
            }
        }
    }
}
