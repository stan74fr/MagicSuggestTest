json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :status, :employee, :activity
  json.url task_url(task, format: :json)
end
