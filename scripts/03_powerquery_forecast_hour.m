// Loads hourly forecast data (used for detailed trends / tooltips)

let
    Source = Excel.Workbook(
        File.Contents("C:\PATH\TO\Forcast_Hour.xlsx"),
        null,
        true
    ),
    Sheet = Source{0}[Data],
    PromotedHeaders = Table.PromoteHeaders(Sheet),

    ChangedTypes = Table.TransformColumnTypes(
        PromotedHeaders,
        {
            {"City", type text},
            {"Datetime", type datetime},
            {"Hour", type text},
            {"Temperature", type number},
            {"Condition", type text}
        }
    )
in
    ChangedTypes