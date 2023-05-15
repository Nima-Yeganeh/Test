import csv

def calculate_average(data):
    total = 0
    count = 0
    for row in data:
        total += float(row['Value'])
        count += 1
    return total / count

with open('data4.csv', 'r') as file:
    reader = csv.DictReader(file)
    average = calculate_average(reader)
    print(f"The average value is: {average}")
