class LiveEventPage < SitePrism::Page
  extend Helpers

  set_url config['livepage']

  element :key_points, '.live-page .key-points'
  element :contribute_form, '.live-page .add-comment form'

  def key_points_button
    config['points']
  end

  def contribute_form_button
    config['formtab']
  end
end
