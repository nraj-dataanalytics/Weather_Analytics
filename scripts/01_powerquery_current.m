// Loads Current Weather metrics

let
    Source = Excel.Workbook(
        File.Contents("C:\PATH\TO\Current.xlsx"),
        null,
        true
    ),
    Sheet = Source{0}[Data],
    PromotedHeaders = Table.PromoteHeaders(Sheet),

    ChangedTypes = Table.TransformColumnTypes(
        PromotedHeaders,
        {
            {"City", type text},
            {"Temperature", type number},
            {"Condition", type text},
            {"Humidity", Int64.Type},
            {"WindSpeed", type number},
            {"Visibility", Int64.Type},
            {"Pressure", Int64.Type},
            {"UVIndex", Int64.Type},
            {"PM10", Int64.Type},
            {"PM25", Int64.Type},
            {"O3", Int64.Type},
            {"SO2", Int64.Type},
            {"CO", Int64.Type},
            {"NO2", Int64.Type},
            {"AQI", Int64.Type},
            {"AQI_Status", type text},
            {"LastUpdated", type datetime}
        }
    )
in
    ChangedTypes