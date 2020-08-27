module PollBooth
  class PollBoothRailtie < ::Rails::Railtie
    initializer 'pollbooth' do
      ActiveSupport::Reloader.to_prepare do
        PollBooth.pollers&.each(&:stop)
      end
    end
  end
end
