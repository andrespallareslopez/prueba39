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
    
    public partial class gesArticuloClase
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public gesArticuloClase()
        {
            this.gesArticulo = new HashSet<gesArticulo>();
            this.GesArticuloClaseConEscandallo = new HashSet<GesArticuloClaseConEscandallo>();
            this.gesEscandallo_Num = new HashSet<gesEscandallo_Num>();
        }
    
        public int CodClase { get; set; }
        public string Descripcion { get; set; }
        public Nullable<bool> Activo { get; set; }
        public Nullable<bool> ConEscandallo { get; set; }
        public Nullable<decimal> Cantidad { get; set; }
        public Nullable<int> CodMagnitud { get; set; }
        public Nullable<bool> DescontarExistencias { get; set; }
        public Nullable<decimal> NRacion { get; set; }
        public Nullable<bool> ParaPreparacion { get; set; }
        public Nullable<bool> ParaProducto { get; set; }
        public Nullable<bool> CalculoPorPeso { get; set; }
        public Nullable<bool> CalculoPorRacion { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<gesArticulo> gesArticulo { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GesArticuloClaseConEscandallo> GesArticuloClaseConEscandallo { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<gesEscandallo_Num> gesEscandallo_Num { get; set; }
    }
}
