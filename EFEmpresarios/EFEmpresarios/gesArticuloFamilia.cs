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
    
    public partial class gesArticuloFamilia
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public gesArticuloFamilia()
        {
            this.gesArticulo = new HashSet<gesArticulo>();
        }
    
        public int CodFamilia { get; set; }
        public string Descripcion { get; set; }
        public Nullable<bool> Activo { get; set; }
        public Nullable<int> CodGrupo { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<gesArticulo> gesArticulo { get; set; }
        public virtual gesArticuloGrupo gesArticuloGrupo { get; set; }
    }
}