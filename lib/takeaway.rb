class Takeaway

attr_reader :menu , :basket

def initialize
  @menu = {"Pizza"=> 6, "Curry"=> 4, "Chips"=> 2}
  @basket = []

end

  def order(dish, quantity)
    raise not_on_menu_msg if !@menu.has_key?(dish)
    # @basket << dish
     @basket << {dish => quantity}
  end

  def not_on_menu_msg
    "Not on the menu, please try again"
  end

end
