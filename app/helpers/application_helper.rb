module ApplicationHelper
  def compare_to_standard(attribute, standard)
    if attribute > standard + 0.5 * standard
      return 'danger'
    elsif attribute < standard + 0.5 * standard && attribute > standard
      return 'warning'
    elsif attribute <= standard && attribute > standard - 0.2 * standard
      return 'success'
    else
      return 'default'
    end
  end
end
