
public with sharing class countWorkingDays {
    public static Integer countWorkingDays(Date startDate, Date endDate) {
        Integer workingDaysCount = 0;
        Date currentDate = startDate;

        while (currentDate <= endDate) {
            // Convert the date to DateTime and get the day name
            DateTime currentDateTime = DateTime.newInstance(
                currentDate,
                Time.newInstance(0, 0, 0, 0)
            );

            String dayName = currentDateTime.format('E');

            if (dayName != 'Sat' && dayName != 'Sun') {
                workingDaysCount++;
            }

            currentDate = currentDate.addDays(1);
        }

        return workingDaysCount;
    }
}
