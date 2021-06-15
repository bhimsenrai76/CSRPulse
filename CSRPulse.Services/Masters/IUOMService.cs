﻿using CSRPulse.Model;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace CSRPulse.Services
{
    public interface IUOMService
    {
        Task<Uom> CreateUOMAsync(Uom uom);
        Task<List<Uom>> GetUOMsAsync();

        Task<bool> UpdateUOMAsync(Uom uom);
        Task<Uom> GetUOMByIdAsync(int UOMId);
    }
}