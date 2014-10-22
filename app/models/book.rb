class Book < ActiveRecord::Base
  has_many :checkouts
  has_many :patrons, through: :checkouts

  def let_out
    self.on_shelf = false
    save
  end

  def back_in
    self.on_shelf = true
    save
  end

end
