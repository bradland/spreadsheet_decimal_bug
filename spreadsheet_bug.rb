require 'spreadsheet'
require 'bigdecimal'

# Setup book and sheet
Spreadsheet.client_encoding = 'UTF-8'
book = Spreadsheet::Workbook.new
sheet = book.create_worksheet :name => "Decimal vs Float"

# Write a BigDecimal value
sheet.row(0).concat ["Decimal:", BigDecimal.new("1.6")]

# Write a float value
sheet.row(1).concat ["Float:",   1.6]

# Write the file
book.write 'spreadsheet_decimal_bug.xls'
