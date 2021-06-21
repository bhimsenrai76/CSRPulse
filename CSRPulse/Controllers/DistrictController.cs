﻿using CSRPulse.Model;
using CSRPulse.Services;
using Microsoft.AspNetCore.Mvc;
using System;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CSRPulse.Services.IServices;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace CSRPulse.Controllers
{
    [Route("[Controller]/[action]")]
    public class DistrictController : BaseController<DistrictController>
    {
        private readonly IDistrictServices _districtServices;
        private readonly IDropdownBindService _ddlService;
        public DistrictController(IDistrictServices districtServices, IDropdownBindService ddlService)
        {
            _districtServices = districtServices;
            _ddlService = ddlService;
        }

        [HttpGet]
        public IActionResult Index()
        {
            _logger.LogInformation("DistrictController/Index");
            try
            {
                BindDropdowns();
              //  var result = await _districtServices.GetDistrictList();
                return View();
            }
            catch (Exception ex)
            {
                _logger.LogError("Message-" + ex.Message + " StackTrace-" + ex.StackTrace + " DatetimeStamp-" + DateTime.Now);
                throw;
            }
        }

        [HttpGet]
        public async Task<PartialViewResult> GetDistrictList(District district)
        {
            _logger.LogInformation("DistrictController/GetDistrictList");
            try
            {
                var result = await _districtServices.GetDistrictList(district);
                return PartialView("_DistrictList",result);
            }
            catch (Exception ex)
            {
                _logger.LogError("Message-" + ex.Message + " StackTrace-" + ex.StackTrace + " DatetimeStamp-" + DateTime.Now);
                throw;
            }
        }
        [HttpGet]
        public IActionResult Create()
        {
            BindDropdowns();
            return View(new District());
        }

        [HttpPost]
        [AutoValidateAntiforgeryToken]
        public async Task<IActionResult> Create(District district)
        {
            try
            {
                _logger.LogInformation("DistrictController/Create");
                ModelState.Remove("IsActive");
                BindDropdowns();
                if (ModelState.IsValid)
                {

                    district.CreatedBy = userDetail == null ? 1 : userDetail.UserID;
                    district.IsActive = true;
                    if (await _districtServices.RecordExist(district))
                    {
                        ModelState.AddModelError("", "District or District Code already exists");
                    }
                    else
                    {
                        var result = await _districtServices.CreateDistrict(district);
                        if (district.RecordExist)
                        {
                            ModelState.AddModelError("", "District already exists");
                        }
                        if (result)
                        {
                            TempData["Message"] = "District Created Successfully.";
                            return RedirectToAction(nameof(Index));
                        }
                    }
                }
                return View(district);
            }
            catch (Exception ex)
            {
                _logger.LogError("Message-" + ex.Message + " StackTrace-" + ex.StackTrace + " DatetimeStamp-" + DateTime.Now);
                throw;
            }
        }
              
        public async Task<IActionResult> Edit(int rid)
        {
            try
            {
                BindDropdowns();
                var uDetail = await _districtServices.GetDistrictById(rid);
                return View(uDetail);
            }
            catch (Exception)
            {

                throw;
            }
        }

        [HttpPost]
        [AutoValidateAntiforgeryToken]
        public async Task<IActionResult> Edit(District district)
        {
            try
            {
                _logger.LogInformation("DistrictController/Edit");
                ModelState.Remove("IsActive");
                BindDropdowns();
                if (ModelState.IsValid)
                {
                    district.UpdatedBy = userDetail == null ? 1 : userDetail.UserID;
                    district.UpdatedOn = DateTime.Now;
                    var result = await _districtServices.UpdateDistrict(district);
                    if (district.RecordExist)
                    {
                        ModelState.AddModelError("", "District already exists");
                    }
                    if (result)
                    {
                        TempData["Message"] = "District Updated Successfully.";
                        return RedirectToAction(nameof(Index));
                    }
                }
                return View(district);
            }
            catch (Exception ex)
            {
                _logger.LogError("Message-" + ex.Message + " StackTrace-" + ex.StackTrace + " DatetimeStamp-" + DateTime.Now);
                throw;
            }
        }

        [NonAction]
        void BindDropdowns()
        {
            var stateList = _ddlService.GetStateAsync(null,null);
            ViewBag.ddlState = new SelectList(stateList, "id", "value");
        }

        [HttpPost]
        public JsonResult ActiveDeActive(int id, bool isChecked)
        {
            _logger.LogInformation("UoMController/ActiveDeActive");
            var result = _districtServices.ActiveDeActive(id, isChecked);
            return Json(result);

        }
    }
}
