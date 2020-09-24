import csv

def csv_input_process(filename):
    datalist=[]
    with open (filename,'r') as csvdata:
        data=csv.reader(csvdata)
        for d in data:
            datalist.append(d)
    return datalist
