json.extract! paper, :id, :title, :link, :created_at, :updated_at
json.url paper_url(paper, format: :json)
