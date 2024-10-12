﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class Detalle_Factura
    {
        public int IdDetalleFactura { get; set; }
      
        public Producto oProducto { get; set; }

        public decimal Precio { get; set; }

        public int Cantidad { get; set; }

        public decimal Subtotal { get; set; }

        public string FechaRegistro { get; set; }
    }
}
