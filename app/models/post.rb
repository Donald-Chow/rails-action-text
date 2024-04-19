class Post < ApplicationRecord
  has_rich_text :body

  private

  def self.ransackable_associations(auth_object = nil)
    # ["rich_text_body"]
    authorizable_ransackable_associations
  end

  def self.ransackable_attributes(auth_object = nil)
    # ["created_at", "id", "id_value", "title", "updated_at"]
    authorizable_ransackable_attributes
  end
end
