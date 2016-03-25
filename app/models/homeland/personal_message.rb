module Homeland
  class PersonalMessage < ActiveRecord::Base
    include Homeland::Concerns::SoftDelete
    include Homeland::Concerns::Markup
    include Homeland::Concerns::UserDelegates

    self.per_page = Homeland.config.per_page

    belongs_to :sender, class_name: Homeland.config.user_class.to_s
    belongs_to :receiver, class_name: Homeland.config.user_class.to_s

    validates :sender_id, :receiver_id, :title, :body, presence: true

    scope :recent, -> { order('id desc') }
    scope :unread, -> { where(read_at: nil) }
    
    def read?
      read_at.present?
    end
  end
end
