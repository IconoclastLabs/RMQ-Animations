class MainStylesheet < ApplicationStylesheet

  def setup
    # Add sytlesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.white
  end

  def animation_text(st)
    st.frame = {t: 70, w: app_width, h: 18}
    st.centered = :horizontal
    st.text_alignment = :center
    st.text = 'RMQ Animations'
    st.color = color.black
    st.font = font.medium
    st.rotation = 0
  end

  def button_set(st)
    st.frame = {t: 145}
  end

  def animation_button(st)
    padding = 10
    st.frame = {l: padding, t:0, w: app_width - 2 * padding, h: 35}
    st.background_color = color.from_hex('#2483C5')
    st.corner_radius = 5
    rmq(st.view).tag(:animation_button)
  end

  def fade_in(st)
    animation_button(st)
    st.text = "Fade In"
  end

  def fade_out(st)
    animation_button(st)
    st.text = "Fade Out"
  end

  def blink(st)
    animation_button(st)
    st.text = "Blink"
  end

  def throb(st)
    animation_button(st)
    st.text = "Throb"
  end

  def sink_and_throb(st)
    animation_button(st)
    st.text = "Sink and Throb"
  end

  def land_and_sink_and_throb(st)
    animation_button(st)
    st.text = "Land and Sink and Throb"
  end

  def drop_and_spin(st)
    animation_button(st)
    st.text = "Drop and Spin"
  end

  def slide_in(st)
    animation_button(st)
    st.text = "Slide In"
  end

  def slide_out(st)
    animation_button(st)
    st.text = "Slide Out"
  end

  # def start_spinner(st)
  #   animation_button(st)
  #   st.text = "Start Spinner"
  # end

  # def stop_spinner(st)
  #   animation_button(st)
  #   st.text = "Stop Spinner"
  # end
end
