class Page < ActiveRecord::Base
  acts_as_publishable :live, :draft, :members_only, :public
  validates_presence_of :title, :body

  attr_accessible :title, :body, :published_as, :page_public

  def to_param
    id.to_s << "-" << (title ? title.parameterize : '')
  end
end
