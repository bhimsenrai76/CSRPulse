﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using CSRPulse.Services.IServices;
using CSRPulse.Data.Repositories;
using AutoMapper;
using DTOModel = CSRPulse.Data.Models;
using System.Transactions;
using System.Linq;

namespace CSRPulse.Services
{
    public class RegistrationService : BaseService, IRegistrationService
    {
        private readonly IMapper _mapper;
        private readonly IEmailService _emailService;
        private readonly IGenericRepository _genericRepository;


        public RegistrationService(IGenericRepository generic, IMapper mapper, IEmailService emailService)
        {
            _genericRepository = generic;
            _mapper = mapper;
            _emailService = emailService;
        }
        public async Task<bool> CustomerExists(Model.Customer customer)
        {
            try
            {
                if (await _genericRepository.ExistsAsync<DTOModel.Customer>(x => x.Email == customer.Email || x.Telephone == customer.Telephone))
                {
                    customer.RecordExist = true;
                    return false;
                }
                return true;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public async Task<int> CustomerRegistrationAsync(Model.Customer customer)
        {
            using (var transaction = _genericRepository.BeginTransaction())
            {
                try
                {
                    if (await _genericRepository.ExistsAsync<DTOModel.Customer>(x => x.Email == customer.Email || x.Telephone == customer.Telephone))
                    {
                        customer.RecordExist = true;
                        return 0;
                    }

                    var dtoCustomer = _mapper.Map<DTOModel.Customer>(customer);
                    Model.StartingNumber startingNum = new Model.StartingNumber
                    {
                        TableName = "customer",
                        ColumnName = "CustomerCode",
                        Prefix = "CUST",
                        Number = 1,
                        NumberWidth = 7,
                        CreatedBy = 1,
                        CreatedOn = DateTimeOffset.UtcNow.Date
                    };

                    dtoCustomer.CustomerCode = GenerateOrGetLatestCode(startingNum, _genericRepository);
                    await _genericRepository.InsertAsync(dtoCustomer);
                    transaction.Commit();

                    return dtoCustomer.CustomerId;
                }
                catch (Exception)
                {
                    transaction.Rollback();
                    throw;
                }
            }
        }

        public async Task<bool> CustomerPaymentAsync(Model.Customer customer)
        {
            using (var transaction = _genericRepository.BeginTransaction())
            {
                try
                {


                    var dtoCustPayment = _mapper.Map<DTOModel.CustomerPayment>(customer.CustomerPayment);
                    await _genericRepository.InsertAsync(dtoCustPayment);

                    customer.CustomerLicense.PaymentId = dtoCustPayment.PaymentId;
                    var dtoCustLicence = _mapper.Map<DTOModel.CustomerLicenseActivation>(customer.CustomerLicense);

                    await _genericRepository.InsertAsync(dtoCustLicence);

                    transaction.Commit();
                    return true;
                }



                catch (Exception)
                {
                    transaction.Rollback();
                    throw;
                }
            }
        }

        public string GenerateOTP()
        {
            //  int _min = 100000;
            //int _max = 999999;
            //Random _rdm = new Random();
            //return _rdm.Next(_min, _max).ToString();


            string alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            string small_alphabets = "abcdefghijklmnopqrstuvwxyz";
            string numbers = "1234567890";

            string characters = numbers;
            characters += alphabets + small_alphabets + numbers;

            int length = 6;
            string otp = string.Empty;
            for (int i = 0; i < length; i++)
            {
                string character = string.Empty;
                do
                {
                    int index = new Random().Next(0, characters.Length);
                    character = characters.ToCharArray()[index].ToString();
                } while (otp.IndexOf(character) != -1);
                otp += character;
            }
            return otp;

        }

        public bool SendOTP(string email, string OTP)
        {
            bool flag = false;
            try
            {
                StringBuilder emailBody = new StringBuilder("");
                Common.EmailMessage message = new Common.EmailMessage();
                message.To = email;
                var mailSubj = _genericRepository.Get<DTOModel.MailSubject>(x => x.MailProcessId == 2).FirstOrDefault();
                if (mailSubj != null)
                {
                    message.Subject = mailSubj.Subject;
                    message.SubjectId = mailSubj.SubjectId;
                }
                else
                    message.Subject = "Default Subject";
              
                message.PlaceHolders = new List<KeyValuePair<string, string>>();
                message.TemplateName = "TestEmail";
                message.PlaceHolders.Add(
                    new KeyValuePair<string, string>("$otp", OTP)
                    );
                _emailService.CustomerRegistrationMail(message);
                flag = true;
            }
            catch (Exception)
            {
                throw;
            }

            return flag;
        }


    }
}
