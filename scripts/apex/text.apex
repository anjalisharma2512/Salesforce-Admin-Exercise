List<String> names = getConsultantsName.consultantsName('001O500004WHbMrIAL');
System.debug(names);

Map<Id, Set<Id>> employerConsultantsMap = employeerConsultantMap.employeerConsultantMap();
System.debug(employerConsultantsMap);


Date startDate = Date.newInstance(2026, 10, 26);
Date endDate = Date.newInstance(2026, 10, 30);

Integer result = countWorkingDays.countWorkingDays(
    startDate,
    endDate
);

System.debug('Working Days Count: ' + result);

List<String> names = ListOfSobjects.getListOfSobjects();
System.debug(names);