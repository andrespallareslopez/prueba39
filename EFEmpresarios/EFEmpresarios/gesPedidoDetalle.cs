//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EFEmpresarios
{
    using System;
    using System.Collections.Generic;
    
    public partial class gesPedidoDetalle
    {
        public System.Guid CodDetalle { get; set; }
        public System.Guid CodPedido { get; set; }
        public int CodArticulo { get; set; }
        public Nullable<int> CodCatalogo { get; set; }
        public Nullable<decimal> Debe_haber { get; set; }
        public Nullable<decimal> Tenemos { get; set; }
        public Nullable<decimal> Pedimos { get; set; }
        public Nullable<System.DateTime> Pedido { get; set; }
        public Nullable<decimal> PresentacionUnidades { get; set; }
        public Nullable<decimal> PresentacionPrecio { get; set; }
        public string PresentacionFormatoPedido { get; set; }
        public string PresentacionFormatoEnvase { get; set; }
        public string PresentacionFormatoEmpaquetado { get; set; }
        public Nullable<System.DateTime> Recibido { get; set; }
        public Nullable<bool> Recibi { get; set; }
        public string Pedido_por { get; set; }
        public string Recibido_por { get; set; }
        public Nullable<decimal> Precio { get; set; }
        public Nullable<decimal> Subtotal { get; set; }
        public Nullable<decimal> Descuento { get; set; }
        public Nullable<decimal> IVA { get; set; }
        public string Observaciones { get; set; }
        public Nullable<decimal> Cajas { get; set; }
    
        public virtual gesArticulo gesArticulo { get; set; }
        public virtual gesPedido gesPedido { get; set; }
    }
}
