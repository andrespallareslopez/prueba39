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
    
    public partial class gesFacTique_Num
    {
        public System.Guid CodDetalle { get; set; }
        public Nullable<System.Guid> CodFactura { get; set; }
        public Nullable<System.Guid> CodProducto { get; set; }
        public string Detalle { get; set; }
        public Nullable<int> Unidad { get; set; }
        public Nullable<decimal> Importe { get; set; }
        public Nullable<decimal> SubTotal { get; set; }
        public Nullable<System.Guid> CodTrabajador { get; set; }
        public string Suceso { get; set; }
        public string Operacion { get; set; }
        public Nullable<System.DateTime> Fecha { get; set; }
        public Nullable<int> Orden { get; set; }
        public Nullable<int> CodDispositivo { get; set; }
        public Nullable<int> CodActividad { get; set; }
        public Nullable<System.Guid> Relacion { get; set; }
        public string Estadio { get; set; }
        public Nullable<int> CodCola { get; set; }
        public Nullable<int> CodProducto_Num { get; set; }
        public Nullable<System.DateTime> FechaNegocio { get; set; }
    
        public virtual gesActividades gesActividades { get; set; }
        public virtual gesDispositivo gesDispositivo { get; set; }
        public virtual gesFactura gesFactura { get; set; }
        public virtual gesHistoricoFactura gesHistoricoFactura { get; set; }
        public virtual gesProducto_Num gesProducto_Num { get; set; }
        public virtual gesTrabajador gesTrabajador { get; set; }
    }
}
