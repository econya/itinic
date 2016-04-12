module ViewActionHelper
  def add_button resource
    link_to self.send("new_#{resource.downcase}_path".to_sym), class: "btn btn-primary" do
      concat(fa_icon "plus")
      concat(" ")
      concat("Add #{resource}")
    end
  end
end
