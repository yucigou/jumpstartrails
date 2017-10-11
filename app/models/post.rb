class Post < ActiveRecord::Base
    # attr_accessor :title, :blurb, :body
    validates :body, :title, :presence => true
    validates :blurb, :length => { :in => 10..255 }, :format => { :with => /^\A[a-zA-Z ]+\z/, :message => "Only letters allowed", :multiline => true}
end
