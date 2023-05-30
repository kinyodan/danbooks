# frozen_string_literal: true

module ApplicationHelper
  def sluggify_string_helper(string)
    string.parameterize
  end

  def trim_string(item)
    item.delete
  end

end
