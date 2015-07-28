class Post < ActiveRecord::Base

  belongs_to :author, class_name: "AdminUser"

  validates_presence_of :body, :title

  scope :published, -> { where(published: true)}

  def content
    MarkdownService.new.render(body)
  end
end
