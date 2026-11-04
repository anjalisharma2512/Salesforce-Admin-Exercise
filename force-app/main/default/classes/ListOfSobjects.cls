public with sharing class ListOfSobjects {
    public static List<String> getListOfSobjects() {
        Map<String, Schema.SObjectType> objectMap =
            Schema.getGlobalDescribe();

        List<String> objectNames =
            new List<String>(objectMap.keySet());

        objectNames.sort();

        return objectNames;   
    }
}