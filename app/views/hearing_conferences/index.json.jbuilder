json.array!(@hearing_conferences) do |hearing_conference|
  json.extract! hearing_conference, :id, :title, :happen_date, :count, :category_id, :location, :wiki, :description
  json.url hearing_conference_url(hearing_conference, format: :json)
end
