# This is opening and connecting the file to be manipulated by python
log_file = open("um-server-01.txt")

# This is a function titled 'sales_reports' with an embedded 'for loop' that combes
# through each line in the txt file removing any trailing characters with rstrip.
# the 'day' variable is assigned the value of indexes '0' and '3' which correlate with the day of the week in the txt file
# the if statement returns the entire line if the parameter 'Tue' is met
# 'print(line)' prints to the consol log
def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":
            print(line)

#sales reports is a function passing in the argument log_file
sales_reports(log_file)


