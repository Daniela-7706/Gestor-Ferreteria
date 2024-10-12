using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class OrdenCompra
    {
        public int IdOrdenCompra { get; set; }
        public Usuario oUsuario { get; set; }
        public Proveedor oProveedor { get; set; }
        public string CodOrdenCompra { get; set; }

        public decimal Total { get; set; }

        public List<Detalle_OrdenCompra> oDetalle_OrdenCompra { get; set; }

        public string FechaRegistro { get; set; }

    }
}
