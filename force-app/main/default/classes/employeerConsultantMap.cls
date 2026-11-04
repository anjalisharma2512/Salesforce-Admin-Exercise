public with sharing class employeerConsultantMap {
    public static Map<Id, Set<Id>> employeerConsultantMap() {
        Map<Id, Set<Id>> employerConsultantMap = new Map<Id, Set<Id>>();
        // Implementation for creating employer-consultant map

        for(Hiring__c hiring : [SELECT Account__c, Consultant__c FROM Hiring__c WHERE Account__c != null AND Consultant__c != null]) {
            if(!employerConsultantMap.containsKey(hiring.Account__c)) {
                employerConsultantMap.put(hiring.Account__c, new Set<Id>());
            }
            employerConsultantMap.get(hiring.Account__c).add(hiring.Consultant__c);
        }
        return employerConsultantMap;
    }
}