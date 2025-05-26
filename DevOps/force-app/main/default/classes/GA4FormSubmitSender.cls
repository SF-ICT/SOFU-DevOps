public with sharing class GA4FormSubmitSender {
    
    @InvocableMethod(label='Send GA4 Form Submit Event')
    public static void sendEvent(List<RequestData> requests) {
        for (RequestData req : requests) {
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint('callout:GA4/mp/collect?measurement_id=' + req.measurementId + '&api_secret=' + req.apiSecret);
            request.setMethod('POST');
            request.setHeader('Content-Type', 'application/json');

            // GA4 payload
            String payload = JSON.serialize(new GA4Payload(req.clientId, req.formName));
            request.setBody(payload);

            HttpResponse response = http.send(request);

            if (response.getStatusCode() != 204) {
                System.debug('GA4 error: ' + response.getBody());
            }
        }
    }

    public class RequestData {
        @InvocableVariable(required=true)
        public String clientId; // A GA client ID (e.g., from cookie or passed in)
        
        @InvocableVariable(required=true)
        public String formName; // Name of the form

        @InvocableVariable(required=true)
        public String measurementId;

        @InvocableVariable(required=true)
        public String apiSecret;
    }

    public class GA4Payload {
        public String client_id;
        public List<Event> events;

        public GA4Payload(String clientId, String formName) {
            this.client_id = clientId;
            this.events = new List<Event>{
                new Event('form_submit', formName)
            };
        }
    }
    
    public class Event {
        public String name;
        public Map<String, Object> params;
        
        public Event(String name, String formName) {
            this.name = name;
            this.params = new Map<String, Object>{
                'form_name' => formName
                    };
        }
    }
}