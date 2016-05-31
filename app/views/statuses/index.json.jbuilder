json.array!(@statuses) do |status|
  json.name status.name
  json.id status.id

end
