//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MVCWardrobeProject
{
    using System;
    using System.Collections.Generic;
    
    public partial class Top
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Top()
        {
            this.Outfits = new HashSet<Outfit>();
        }
    
        public int TopID { get; set; }
        public string TopName { get; set; }
        public string TopPhoto { get; set; }
        public string TopColor { get; set; }
        public string TopSeason { get; set; }
        public string TopOccasion { get; set; }
        public string TopType { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Outfit> Outfits { get; set; }
    }
}
