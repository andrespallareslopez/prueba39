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
    
    public partial class gesProducto_Num
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public gesProducto_Num()
        {
            this.gesFacTique_Num = new HashSet<gesFacTique_Num>();
        }
    
        public Nullable<System.Guid> CodProducto { get; set; }
        public Nullable<int> CodGrupo { get; set; }
        public Nullable<int> CodFamilia { get; set; }
        public Nullable<int> CodZona { get; set; }
        public int CodProducto_Num { get; set; }
        public string Descripcion { get; set; }
        public bool Activo { get; set; }
        public Nullable<decimal> Precio { get; set; }
        public Nullable<bool> ConEscandallo { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<gesFacTique_Num> gesFacTique_Num { get; set; }
        public virtual gesFamilia gesFamilia { get; set; }
        public virtual gesGrupo gesGrupo { get; set; }
    }
}
