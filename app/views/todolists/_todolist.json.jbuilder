json.extract! todolist, :id, :Tasks, :Priority, :Urgency, :Status, :Category, :created_at, :updated_at
json.url todolist_url(todolist, format: :json)
