class Cat < ActiveRecord::Base
  validates :birth_date, :color, :name, :sex, presence: true
  validates :sex, inclusion: {in: ["M", "F"]}

  def age
    birthyear = self.birth_date.year
    now = Date.today
    now.year - birthyear
  end



end
