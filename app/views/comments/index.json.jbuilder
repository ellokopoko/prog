json.array!(@comments) do |comment|
  json.extract! comment, :id, :text, :date
  json.url comment_url(comment, format: :json)
end
