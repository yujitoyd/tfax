class Hello
  @queue = :tfax

  def self.perform(message)
    sleep 5
    logger = Logger.new(File.join(Rails.root, 'log', 'resque.log'))
    logger.info "Hello #{message}"
  end
end