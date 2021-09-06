﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace CSRPulse.Data.Models
{
    public partial class FinancialAuditReport
    {
        [Key]
        [Column("FAReportId")]
        public int FareportId { get; set; }
        [Column("NGOId")]
        public int? Ngoid { get; set; }
        public int? ProjectId { get; set; }
        public int? AuditorId { get; set; }
        public int? AuditCheckerId { get; set; }
        public int? AuditMakerId { get; set; }
        public int? ProgramManagerId { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime? AuditDate { get; set; }
        public bool? IsActive { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime CreatedOn { get; set; }
        public int CreatedBy { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime? UpdatedOn { get; set; }
        public int? UpdatedBy { get; set; }
    }
}
