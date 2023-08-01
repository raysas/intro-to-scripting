import csv

with open("data.csv", 'r') as data_file:
  reader = csv.reader(data_file)
  next(reader)
  print(reader[4])
  cities=[] #he made another harder example on different data with dictionaries
  for line in reader:
    city=line[3]
    if city not in cities:
      cities.append(city)
