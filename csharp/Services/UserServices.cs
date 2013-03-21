using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using IDPRO.csharp.Constants;
using IDPRO.csharp.DAO;
using IDPRO.csharp.Model;

namespace IDPRO.csharp.Services
{
    public class UserServices
    {

        public string getHashPassword(string password)
        {
            return FormsAuthentication.HashPasswordForStoringInConfigFile(password, "SHA1");
        }

        public string ValidateUser(string userName, string passWord)
        {
            string returnString = IdProConstants.SUCCESS;
            userName = userName.ToUpper().Trim();
            passWord = passWord.Trim();

            UserDAO userDao = new UserDAO();

            User user = userDao.getUserByUserName(userName);
            string hash = getHashPassword(passWord);
            if (user == null)
            {
                returnString = "User Can not be found in the system";

            }
            else if (!user.Password.Trim().Equals(getHashPassword(passWord)))
            {
                returnString = "Invalid Password";
            }

            return returnString;

        }


        public bool isUserNameExist(string userName)
        {
            UserDAO userDao = new UserDAO();

            return userDao.getUserByUserName(userName.Trim().ToUpper()) != null;

        }

        public User getUserbyUserName(string userName)
        {
            UserDAO userDao = new UserDAO();
            return userDao.getUserByUserName(userName);

        }

     
      




    }
}