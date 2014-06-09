class MainController < UIViewController 

  def viewDidLoad
    super

    self.title = "RMQ Animations"
    # Sets a top of 0 to be below the navigation control
    self.edgesForExtendedLayout = UIRectEdgeNone

    rmq.stylesheet = MainStylesheet
    rmq(self.view).apply_style :root_view

    # Create your UIViews here
    @hello_world_label = rmq.append(UILabel, :hello_world).get

    rmq.append(UIView, :button_set).tap do |form|
      form.append(UIButton, :fade_in).on(:tap) do |sender|
        p "FADING IN"
      end

      form.append(UIButton, :fade_out).on(:tap) do |sender|
        p "FADING OUT"
      end

      rmq(:animation_button).distribute(:vertical, margin: 5)
    end
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
