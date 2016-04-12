module ViewActionHelper
  def add_button resource
    link_to self.send("new_#{resource.downcase}_path".to_sym), class: "btn btn-primary" do
      concat(fa_icon "plus")
      concat(" ")
      concat("Add #{resource}")
    end
  end

  def edit_button resource
    link_to self.send("edit_#{resource.class.name.downcase}_path".to_sym, resource), class: "btn btn-primary" do
      concat(fa_icon "wrench")
      concat(" ")
      concat("Edit")
    end
  end
end
