json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :description, :date, :deadline_date, :status
  json.url task_url(task, format: :json)
end
