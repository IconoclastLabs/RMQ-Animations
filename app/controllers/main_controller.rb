class MainController < UIViewController 

  def viewDidLoad
    super

    self.title = "RMQ Animations"
    # Sets a top of 0 to be below the navigation control
    self.edgesForExtendedLayout = UIRectEdgeNone

    rmq.stylesheet = MainStylesheet
    rmq(self.view).apply_style :root_view

    # Create your UIViews here
    @animated_text = rmq.append(UILabel, :animation_text).get

    rmq.append(UIView, :button_set).tap do |form|
      form.append(UIButton, :fade_in).on(:touch) do |sender|
        p "FADING IN"
        rmq(@animated_text).animations.fade_in
      end

      form.append(UIButton, :fade_out).on(:touch) do |sender|
        p "FADING OUT"
        rmq(@animated_text).animations.fade_out
      end

      form.append(UIButton, :blink).on(:touch) do |sender|
        p "BLINKING"
        rmq(@animated_text).animations.blink
      end

      form.append(UIButton, :throb).on(:touch) do |sender|
        p "THROBBING"
        rmq(@animated_text).animations.throb
      end

      form.append(UIButton, :sink_and_throb).on(:touch) do |sender|
        p "SINKING AND THROBBING"
        rmq(@animated_text).animations.sink_and_throb
      end

      form.append(UIButton, :land_and_sink_and_throb).on(:touch) do |sender|
        p "LANDING AND SINKING AND THROBBING"
        rmq(@animated_text).animations.land_and_sink_and_throb
      end

      form.append(UIButton, :drop_and_spin).on(:touch) do |sender|
        p "DROPPING AND SPINNING"
        rmq(@animated_text).animations.drop_and_spin
      end

      form.append(UIButton, :start_spinner).on(:touch) do |sender|
        p "STARTING SPINNER"
        rmq.animations.start_spinner
      end

      form.append(UIButton, :stop_spinner).on(:touch) do |sender|
        p "STOPPING SPINNER"
        rmq.animations.stop_spinner
      end

      rmq(:animation_button).distribute(:vertical, margin: 5)
    end.resize_to_fit_subviews

  end

  # Remove if you are only supporting portrait
  def supportedInterfaceOrientations
    UIInterfaceOrientationMaskAll
  end

  # Remove if you are only supporting portrait
  def willAnimateRotationToInterfaceOrientation(orientation, duration: duration)
    rmq.all.reapply_styles
  end

end
