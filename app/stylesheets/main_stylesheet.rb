class MainStylesheet < ApplicationStylesheet

  def setup
    # Add sytlesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.white
  end

  def hello_world(st)
    st.frame = {t: 100, w: 200, h: 18}
    st.centered = :horizontal
    st.text_alignment = :center
    st.text = 'RMQ Animations'
    st.color = color.black
    st.font = font.medium
  end

  def button_set(st)

  end

  def animation_button(st)
    padding = 10
    st.frame = {l: padding, t:0, w: app_width - 2 * padding, h: 50}
    st.background_color = color.from_hex('#2483C5')
    st.corner_radius = 5
    rmq(st.view).tag(:animation_button)
  end

  def fade_in(st)
    animation_button(st)
    st.text = "Fade In"
  end 

end
