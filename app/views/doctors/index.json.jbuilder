json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :address, :city, :state, :zip, :school, :years_of_practice
  json.url doctor_url(doctor, format: :json)
end
