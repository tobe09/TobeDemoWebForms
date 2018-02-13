using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;

namespace TobeDemo.Services
{
    [ServiceContract(Namespace = "")]
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class NameService
    {
        [OperationContract]
        public string HelloWorld(string name)
        {
            // Add your operation implementation here
            return string.Format("Hello {0}!", name);
        }

        // Add more operations here and mark them with [OperationContract]
    }
}
