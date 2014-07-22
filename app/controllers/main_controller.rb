class MainController < UIViewController

  def viewDidLoad
    super

    self.title = "RMQ Animations"
    # Sets a top of 0 to be below the navigation control
    self.edgesForExtendedLayout = UIRectEdgeNone

    rmq.stylesheet = MainStylesheet
    rmq(self.view).apply_style :root_view

    # Create your UIViews here
    @animated_text = rmq.append!(UILabel, :animation_text)

    rmq.append(UIView, :button_set).tap do |form|
      form.append(UIButton, :fade_in).on(:touch) do |sender|
        p sender.currentTitle
        @animated_text.text = sender.currentTitle
        rmq(@animated_text).animations.fade_in
      end

      form.append(UIButton, :fade_out).on(:touch) do |sender|
        p sender.currentTitle
        @animated_text.text = sender.currentTitle
        rmq(@animated_text).animations.fade_out
      end

      form.append(UIButton, :blink).on(:touch) do |sender|
        p sender.currentTitle
        @animated_text.text = sender.currentTitle
        rmq(@animated_text).animations.blink
      end

      form.append(UIButton, :throb).on(:touch) do |sender|
        p sender.currentTitle
        @animated_text.text = sender.currentTitle
        rmq(@animated_text).animations.throb
      end

      form.append(UIButton, :sink_and_throb).on(:touch) do |sender|
        p sender.currentTitle
        @animated_text.text = sender.currentTitle
        rmq(@animated_text).animations.sink_and_throb
      end

      form.append(UIButton, :land_and_sink_and_throb).on(:touch) do |sender|
        p sender.currentTitle
        @animated_text.text = sender.currentTitle
        rmq(@animated_text).animations.land_and_sink_and_throb
      end

      form.append(UIButton, :drop_and_spin).on(:touch) do |sender|
        p sender.currentTitle
        @animated_text.text = sender.currentTitle
        rmq(@animated_text).animations.drop_and_spin(completion: -> (did_finish, completion_rmq) {
          rmq(@animated_text).apply_style :animation_text if did_finish
        })
      end

      form.append(UIButton, :slide_in).on(:touch) do |sender|
        p sender.currentTitle
        @animated_text.text = sender.currentTitle
        rmq(@animated_text).animations.slide_in
      end

      form.append(UIButton, :slide_out).on(:touch) do |sender|
        p sender.currentTitle
        @animated_text.text = sender.currentTitle
        rmq(@animated_text).animations.slide_out(completion: -> (did_finish, completion_rmq) {
          rmq(@animated_text).apply_style :animation_text if did_finish
        })
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
