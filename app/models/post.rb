class Post < ApplicationRecord

    belongs_to :user # each post belongs to a user
    
    validates_presence_of :title, :body

    scope :newest_first, lambda {order("created_at DESC")} # sort based on displaying the latest one at the first
    scope :search_by_title, lambda {|query| where(["title LIKE ?", "%#{query}%"])} # search by title
    scope :search_by_body, lambda {|query| where(["body LIKE ?", "%#{query}%"])} # search by body
    scope :search_by_title_or_body, lambda {|query| where(["LOWER(title) LIKE ? OR LOWER(body) LIKE ?", "%#{query}%", "%#{query}%"])} # case-insensitive search by title or body

end
