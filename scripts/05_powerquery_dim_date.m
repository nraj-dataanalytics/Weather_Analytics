// Date dimension for forecast analysis

let
    StartDate = #date(2024, 6, 18),
    EndDate   = Date.AddDays(StartDate, 7),
    Dates = List.Dates(StartDate, Duration.Days(EndDate - StartDate) + 1, #duration(1,0,0,0)),
    TableFromList = Table.FromList(Dates, Splitter.SplitByNothing(), {"Date"}),

    AddYear = Table.AddColumn(TableFromList, "Year", each Date.Year([Date]), Int64.Type),
    AddMonth = Table.AddColumn(AddYear, "Month", each Date.ToText([Date], "MMM")),
    AddDay = Table.AddColumn(AddMonth, "Day", each Date.ToText([Date], "dddd"))
in
    AddDay