module UsersHelper
  def column_changed(orig, target, name)
    return unless target
    orig.send(name) != target.send(name)
  end
end
