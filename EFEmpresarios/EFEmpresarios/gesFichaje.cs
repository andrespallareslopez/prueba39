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
    
    public partial class gesFichaje
    {
        public System.Guid CodFichaje { get; set; }
        public Nullable<int> CodTrabajador { get; set; }
        public string Nombre { get; set; }
        public string Apellidos { get; set; }
        public Nullable<System.DateTime> Entrada { get; set; }
        public Nullable<System.DateTime> Salida { get; set; }
        public Nullable<int> CodPeriodo { get; set; }
        public string Periodo { get; set; }
        public Nullable<int> CodLocal { get; set; }
        public string Centro { get; set; }
        public Nullable<int> CodZona { get; set; }
        public string Zona { get; set; }
        public Nullable<int> CodDispositivo { get; set; }
        public string Estado { get; set; }
    }
}
