//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ApplicationCharbon.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class station_type
    {
        public int Id_Stype { get; set; }
        public int id_type { get; set; }
        public int id_station { get; set; }
    
        public virtual Station Station { get; set; }
        public virtual Types Types { get; set; }
    }
}
