using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;

namespace TobeDemo.Services
{
    [ServiceContract(Namespace = "tobedemo")]
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class ArithmeticService
    {
        [OperationContract]
        public double Sum(double a, double b)
        {
            return a + b;
        }
    }
}
