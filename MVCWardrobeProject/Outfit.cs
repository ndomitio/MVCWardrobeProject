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
    using System.ComponentModel.DataAnnotations;

    public partial class Outfit
    {
        public int OutfitID { get; set; }
        [Display(Name = "Top")] public int TopID { get; set; }
        [Display(Name = "Bottom")] public int BottomID { get; set; }
        [Display(Name = "Shoe")] public int ShoeID { get; set; }
        [Display(Name = "Accessory")] public int AccessoryID { get; set; }
    
        public virtual Accessory Accessory { get; set; }
        public virtual Bottom Bottom { get; set; }
        public virtual Shoe Shoe { get; set; }
        public virtual Top Top { get; set; }
    }
}
