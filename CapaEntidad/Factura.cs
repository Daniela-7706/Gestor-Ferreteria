using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class Factura
    {
        public int IdFactura { get; set; }
        public Usuario oUsuario { get; set; }
        
        public string CodFactura { get; set; }

        public string NombreCliente { get; set; }

        public string DocumentoCliente { get; set; }

        public decimal Total { get; set; }

        public decimal Cambio { get; set; }

        public List<Detalle_Factura> oDetalle_Factura { get; set; }

        public string FechaRegistro { get; set; }
    }
}
