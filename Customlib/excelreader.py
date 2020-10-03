import openpyxl
import os
def excel_input_process(filename,minrow,maxrow,mincol,maxcol):
    datalist=[]
    filename=os.path.normpath(filename)
    wb=openpyxl.load_workbook(filename)
    sheet=wb['address']
    for row in sheet.iter_rows(min_row=minrow, min_col=mincol, max_row=maxrow, max_col=maxcol):
        datalist2=[]
        for cell in row:
            datalist2.append(cell.value)
        datalist.append(datalist2)
    return datalist