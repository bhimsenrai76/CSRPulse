﻿using CSRPulse.Data.Data;
using System;
using System.Collections.Generic;
using System.Text;
using CSRPulse.Model;
using CSRPulse.Data.Repositories;
using DTOModel = CSRPulse.Data.Models;
using System.Linq;
using AutoMapper;

namespace CSRPulse.Services
{
    public class BaseService
    {
        private readonly IMapper _mapper;
        internal readonly IGenericRepository _genRepo=null;
        public BaseService(IMapper mapper, IGenericRepository genRepo=null)
        {
            _mapper = mapper;
            _genRepo = genRepo;
        }
        /// <summary>
        /// This function is will refresh dbcontext class after database has been changed to switch new database
        /// </summary>
        /// <param name="_connection"></param>
        public static void SetConnectionString(ref string _connection)
        {
            CSRPulseDbContext.CustomeConnectionString = _connection;
            CSRPulseDbContext context = new CSRPulseDbContext();
            //_ = new CSRPulseDbContext();
        }
        /// <summary>
        ///  Generate Custom Code based on table 
        /// </summary>
        public string GenerateOrGetLatestCode(StartingNumber startingNumber)
        {
            try
            {
               // IGenericRepository genericRepo = new GenericRepository();
                if (_genRepo.Exists<DTOModel.StartingNumber>(x => x.TableName == startingNumber.TableName))
                {
                    var getData = _genRepo.Get<DTOModel.StartingNumber>(x => x.TableName == startingNumber.TableName).FirstOrDefault();
                    if (getData != null)
                    {
                        getData.Number++;
                        _genRepo.Update(getData);

                        return GenerateCode(getData);
                    }
                }
                else
                {

                    var dtoNumber = _mapper.Map<DTOModel.StartingNumber>(startingNumber);
                    _genRepo.Insert(dtoNumber);
                    return GenerateCode(dtoNumber);
                }
                return string.Empty;

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        private string GenerateCode(DTOModel.StartingNumber startingNumber)
        {
            string newCode = string.Empty;
            if (startingNumber != null)
            {
                int maxNumber = startingNumber.NumberWidth;
               

                newCode = startingNumber.Prefix + "-" + startingNumber.Number;

            }
            return newCode;

        }
    }
}
