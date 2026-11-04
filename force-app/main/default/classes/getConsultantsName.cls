public with sharing class getConsultantsName {
    public static List<String> consultantsName(Id EmployerId) {
        List<String> consultantNames = new List<String>();
        // Implementation for fetching consultant names

        for(Hiring__c hiring : [select consultant__r.name from hiring__c where account__c = :EmployerId]) {
            if(hiring.consultant__r != null) {
                consultantNames.add(hiring.consultant__r.name);
            }
        }
        return consultantNames;
    }
}