json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :description, :is_draft, :is_published, :published_at
  json.url blog_url(blog, format: :json)
end
