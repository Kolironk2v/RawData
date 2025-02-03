section Section1;
shared shishi_israeli_raw_data_pipe = let
  Source = Lakehouse.Contents(null){[workspaceId = "bd19bfc8-033a-4b67-b80c-e8c4cbdc21ce"]}[Data]{[lakehouseId = "7e1f457e-499e-4c2b-bd51-3b1ea6aa0d3e"]}[Data],
  #"Navigation 1" = Source{[Id = "shishi_israeli_raw_data_pipe", ItemKind = "Table"]}[Data],
  #"Changed column type" = Table.TransformColumnTypes(#"Navigation 1", {{"order_id", Int64.Type}, {"order_date", type datetime}, {"event_id", Int64.Type}, {"event_start_date", type date}}),
  #"Removed columns" = Table.RemoveColumns(#"Changed column type", {"seating_location_1", "seating_location_2", "seating_location_3", "barcode_number"}),
  #"Removed errors" = Table.RemoveRowsWithErrors(#"Removed columns", {"order_id"})
in
  #"Removed errors";
