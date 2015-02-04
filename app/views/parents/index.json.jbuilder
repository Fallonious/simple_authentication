json.array!(@parents) do |parent|
  json.extract! parent, :id, :child_name, :parent_name, :parent_email, :child_class
  json.url parent_url(parent, format: :json)
end
