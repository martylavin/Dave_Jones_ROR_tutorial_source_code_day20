json.array!(@stores) do |store|
  json.extract! store, :index, :show
  json.url store_url(store, format: :json)
end
