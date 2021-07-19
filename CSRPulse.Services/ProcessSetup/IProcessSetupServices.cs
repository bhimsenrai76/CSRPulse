﻿using CSRPulse.Model;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace CSRPulse.Services
{
    public interface IProcessSetupServices
    {
        Task<bool> CreateProcessSetup(List<ProcessSetup> processes);
        Task<List<ProcessSetup>> GetProcessSetupById(int processId);
        Task<bool> UpdateProcessSetup(List<ProcessSetup> processSetup);
        Task<bool> InsertProcessSetupHistory(List<ProcessSetupHistory> process);
        Task<List<ProcessSetupHistory>> GetProcessSetupHistoryBySetupId(int processId);
    }
}