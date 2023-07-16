//Generated by wsdl2apex

public class AsyncDreamITSOAP {
    public class DivideResponse_elementFuture extends System.WebServiceCalloutFuture {
        public Integer getValue() {
            DreamITSOAP.DivideResponse_element response = (DreamITSOAP.DivideResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.DivideResult;
        }
    }
    public class AddResponse_elementFuture extends System.WebServiceCalloutFuture {
        public Integer getValue() {
            DreamITSOAP.AddResponse_element response = (DreamITSOAP.AddResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.AddResult;
        }
    }
    public class MultiplyResponse_elementFuture extends System.WebServiceCalloutFuture {
        public Integer getValue() {
            DreamITSOAP.MultiplyResponse_element response = (DreamITSOAP.MultiplyResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.MultiplyResult;
        }
    }
    public class SubtractResponse_elementFuture extends System.WebServiceCalloutFuture {
        public Integer getValue() {
            DreamITSOAP.SubtractResponse_element response = (DreamITSOAP.SubtractResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.SubtractResult;
        }
    }
    public class AsyncCalculatorSoap {
        public String endpoint_x = 'http://www.dneonline.com/calculator.asmx';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://tempuri.org/', 'DreamITSOAP'};
        public AsyncDreamITSOAP.DivideResponse_elementFuture beginDivide(System.Continuation continuation,Integer intA,Integer intB) {
            DreamITSOAP.Divide_element request_x = new DreamITSOAP.Divide_element();
            request_x.intA = intA;
            request_x.intB = intB;
            return (AsyncDreamITSOAP.DivideResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncDreamITSOAP.DivideResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://tempuri.org/Divide',
              'http://tempuri.org/',
              'Divide',
              'http://tempuri.org/',
              'DivideResponse',
              'DreamITSOAP.DivideResponse_element'}
            );
        }
        public AsyncDreamITSOAP.AddResponse_elementFuture beginAdd(System.Continuation continuation,Integer intA,Integer intB) {
            DreamITSOAP.Add_element request_x = new DreamITSOAP.Add_element();
            request_x.intA = intA;
            request_x.intB = intB;
            return (AsyncDreamITSOAP.AddResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncDreamITSOAP.AddResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://tempuri.org/Add',
              'http://tempuri.org/',
              'Add',
              'http://tempuri.org/',
              'AddResponse',
              'DreamITSOAP.AddResponse_element'}
            );
        }
        public AsyncDreamITSOAP.MultiplyResponse_elementFuture beginMultiply(System.Continuation continuation,Integer intA,Integer intB) {
            DreamITSOAP.Multiply_element request_x = new DreamITSOAP.Multiply_element();
            request_x.intA = intA;
            request_x.intB = intB;
            return (AsyncDreamITSOAP.MultiplyResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncDreamITSOAP.MultiplyResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://tempuri.org/Multiply',
              'http://tempuri.org/',
              'Multiply',
              'http://tempuri.org/',
              'MultiplyResponse',
              'DreamITSOAP.MultiplyResponse_element'}
            );
        }
        public AsyncDreamITSOAP.SubtractResponse_elementFuture beginSubtract(System.Continuation continuation,Integer intA,Integer intB) {
            DreamITSOAP.Subtract_element request_x = new DreamITSOAP.Subtract_element();
            request_x.intA = intA;
            request_x.intB = intB;
            return (AsyncDreamITSOAP.SubtractResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncDreamITSOAP.SubtractResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://tempuri.org/Subtract',
              'http://tempuri.org/',
              'Subtract',
              'http://tempuri.org/',
              'SubtractResponse',
              'DreamITSOAP.SubtractResponse_element'}
            );
        }
    }
}