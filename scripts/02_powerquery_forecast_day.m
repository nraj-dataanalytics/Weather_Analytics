// Loads 7-day forecast data

let
    Source = Excel.Workbook(
        File.Contents("C:\PATH\TO\Forcast_Day.xlsx"),
        null,
        true
    ),
    Sheet = Source{0}[Data],
    PromotedHeaders = Table.PromoteHeaders(Sheet),

    ChangedTypes = Table.TransformColumnTypes(
        PromotedHeaders,
        {
            {"City", type text},
            {"Date", type date},
            {"Day", type text},
            {"Temperature", type number},
            {"RainChance", Int64.Type}
        }
    )
in
    ChangedTypes