class Link < ApplicationRecord
  belongs_to :user

  def standardize_target_url!
    self.target_url.gsub!("http://", "")
    self.target_url.gsub!("https://", "")
  end

end
