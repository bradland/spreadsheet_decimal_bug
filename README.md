# Spreadsheet Decimal Bug #

If provided a value of the class BigDecimal, the spreadsheet output will contain incorrect values. For example, if provided `BigDecimal.new("1.6")`, the resulting cell will contain the value 1.59999847412109. If provided a simple Float, `1.6`, the expected result is seen.

A sample script is provided in the file spreadsheet_bug.rb. To test:

    $ bundle install
    $ ruby spreadsheet_bug.rb

An rvmrc file is included for convenience. You may wish to edit before entering the directory. RVM spec:

    ruby-1.9.2-p290@spreadsheet_float_decimal_bug
