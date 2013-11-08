class Comment < ActiveRecord::Base
  include TheComments::Comment
  # ---------------------------------------------------
  # Define comment's avatar url
  # Usually we use Comment#user (owner of comment) to define avatar
  # @blog.comments.includes(:user) <= use includes(:user) to decrease queries count
  # comment#user.avatar_url
  # ---------------------------------------------------

  # public
  # ---------------------------------------------------
  # Simple way to define avatar url
  #
  # def avatar_url
  #   src = id.to_s
  #   src = title unless title.blank?
  #   src = contacts if !contacts.blank? && /@/ =~ contacts
  #   hash = Digest::MD5.hexdigest(src)
  #   "https://2.gravatar.com/avatar/#{hash}?s=42&d=https://identicons.github.com/#{hash}.png"
  # end
  # ---------------------------------------------------

  def prepare_content
    self.content = Sanitize.clean(self.raw_content, Sanitize::Config::RELAXED)
  end
end