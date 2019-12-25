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
    
    public partial class gesProveedores
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public gesProveedores()
        {
            this.gesCatalogo = new HashSet<gesCatalogo>();
            this.gesPedido = new HashSet<gesPedido>();
        }
    
        public int CodProveedor { get; set; }
        public string Nombre { get; set; }
        public string Apellidos { get; set; }
        public string Empresa { get; set; }
        public string TelefonoFijo { get; set; }
        public string TelefonoMovil { get; set; }
        public string Cif { get; set; }
        public string Direccion { get; set; }
        public string Localidad { get; set; }
        public string Provincia { get; set; }
        public Nullable<bool> Activo { get; set; }
        public string Email { get; set; }
        public string TipoPago { get; set; }
        public string NRSanitario { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<gesCatalogo> gesCatalogo { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<gesPedido> gesPedido { get; set; }
    }
}