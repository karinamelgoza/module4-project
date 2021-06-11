# opening file and assigning opened file  to log_file
log_file = open("um-server-01.txt")


def sales_reports(log_file):  # setting up function to work on log_file
    for line in log_file:  # setting up loop on log_file
        line = line.rstrip()  # removing trailing characters on each line
        day = line[0:3]  # assigning day to equal items in index 0 to 3
        if day == "Mon":  # if statement for when day is equal to "Mon"
            print(line)  # if above is met the line will print


sales_reports(log_file)  # calling the function


def melon_orders(log_file):
    for line in log_file:
        value = line.split()
        order = int(value[2])
        if order > 10:
            print(line)


melon_orders(log_file)
