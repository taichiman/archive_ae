module BasePublication
  extend ActiveSupport::Concern

  included do
    include BaseSorts
    include BaseStates

    belongs_to :user
    validates_presence_of :user, :title

    # attr_accessible :name
    # attr_protected  :admin

    # def to_param; self.slug_id end

    # short_id    => p1345
    # slug_id     => my-first-blog-post
    # friendly_id => short_id + slug_id = p1345--my-first-blog-post
    # validates_presence_of :slug_id, :short_id, :friendly_id
  end
end