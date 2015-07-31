class Post < ActiveRecord::Base

  belongs_to :author, class_name: "AdminUser"

  validates_presence_of :body, :title, :avatar

  scope :published, -> { where(published: true)}

  def content
    MarkdownService.new.render(body)
  end

  def markAvatar
    MarkdownService.new.imageRender(avatar)
  end

end
