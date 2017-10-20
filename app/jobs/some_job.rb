class SomeJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Thing.create!(:name => "Thing created via a job at #{Time.now}")
  end
end
