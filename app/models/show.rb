class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  def actors_list
    self.actors.map do |actor|
      actor.full_name
      # could also write the above as:
      # self.actors.map(&:full_name)
    end
  end
end