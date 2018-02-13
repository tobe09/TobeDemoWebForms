<%@ WebService Language="C#" Class="TobeService1"%>

//old methodology of creating services, published service is located at \TobeWebServices virtual dirctory on iis

using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Runtime.Serialization;
//using System.ServiceModel;
//using System.Text;
using System.Web.Services;
//using System.Xml.Serialization; //not used

[WebService(Namespace = "TobeServices")]
public class TobeService1
{
    [WebMethod]
    public int Multiply(int a, int b)
    {
        return a * b;
    }

    [WebMethod]
    public int Substraction(int a, int b)
    {
        return Math.Abs(a - b);
    }
}