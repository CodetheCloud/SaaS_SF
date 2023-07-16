//Generated by wsdl2apex

public class AsyncAugF {
    public class DivideResponse_elementFuture extends System.WebServiceCalloutFuture {
        public Integer getValue() {
            AugF.DivideResponse_element response = (AugF.DivideResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.DivideResult;
        }
    }
    public class AddResponse_elementFuture extends System.WebServiceCalloutFuture {
        public Integer getValue() {
            AugF.AddResponse_element response = (AugF.AddResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.AddResult;
        }
    }
    public class MultiplyResponse_elementFuture extends System.WebServiceCalloutFuture {
        public Integer getValue() {
            AugF.MultiplyResponse_element response = (AugF.MultiplyResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.MultiplyResult;
        }
    }
    public class SubtractResponse_elementFuture extends System.WebServiceCalloutFuture {
        public Integer getValue() {
            AugF.SubtractResponse_element response = (AugF.SubtractResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.SubtractResult;
        }
    }
    public class AsyncCalculatorSoap {
        public String endpoint_x = 'http://www.dneonline.com/calculator.asmx';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://tempuri.org/', 'AugF'};
        public AsyncAugF.DivideResponse_elementFuture beginDivide(System.Continuation continuation,Integer intA,Integer intB) {
            AugF.Divide_element request_x = new AugF.Divide_element();
            request_x.intA = intA;
            request_x.intB = intB;
            return (AsyncAugF.DivideResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncAugF.DivideResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://tempuri.org/Divide',
              'http://tempuri.org/',
              'Divide',
              'http://tempuri.org/',
              'DivideResponse',
              'AugF.DivideResponse_element'}
            );
        }
        public AsyncAugF.AddResponse_elementFuture beginAdd(System.Continuation continuation,Integer intA,Integer intB) {
            AugF.Add_element request_x = new AugF.Add_element();
            request_x.intA = intA;
            request_x.intB = intB;
            return (AsyncAugF.AddResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncAugF.AddResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://tempuri.org/Add',
              'http://tempuri.org/',
              'Add',
              'http://tempuri.org/',
              'AddResponse',
              'AugF.AddResponse_element'}
            );
        }
        public AsyncAugF.MultiplyResponse_elementFuture beginMultiply(System.Continuation continuation,Integer intA,Integer intB) {
            AugF.Multiply_element request_x = new AugF.Multiply_element();
            request_x.intA = intA;
            request_x.intB = intB;
            return (AsyncAugF.MultiplyResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncAugF.MultiplyResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://tempuri.org/Multiply',
              'http://tempuri.org/',
              'Multiply',
              'http://tempuri.org/',
              'MultiplyResponse',
              'AugF.MultiplyResponse_element'}
            );
        }
        public AsyncAugF.SubtractResponse_elementFuture beginSubtract(System.Continuation continuation,Integer intA,Integer intB) {
            AugF.Subtract_element request_x = new AugF.Subtract_element();
            request_x.intA = intA;
            request_x.intB = intB;
            return (AsyncAugF.SubtractResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncAugF.SubtractResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://tempuri.org/Subtract',
              'http://tempuri.org/',
              'Subtract',
              'http://tempuri.org/',
              'SubtractResponse',
              'AugF.SubtractResponse_element'}
            );
        }
    }
}