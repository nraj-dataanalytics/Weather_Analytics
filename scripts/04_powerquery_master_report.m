// Loads city-level metadata (sunrise, sunset, theme)

let
    Source = Excel.Workbook(
        File.Contents("C:\PATH\TO\MasterReport.xlsx"),
        null,
        true
    ),
    Sheet = Source{0}[Data],
    PromotedHeaders = Table.PromoteHeaders(Sheet),

    ChangedTypes = Table.TransformColumnTypes(
        PromotedHeaders,
        {
            {"City", type text},
            {"Sunrise", type text},
            {"Sunset", type text},
            {"Theme", type text}
        }
    )
in
    ChangedTypes