json.extract! blog_review, :id, :user_id, :blog_id, :review, :created_at, :updated_at
json.url blog_review_url(blog_review, format: :json)
